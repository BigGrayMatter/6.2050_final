import cocotb
import os
import random
import sys
from math import log
import logging
from pathlib import Path
from cocotb.clock import Clock
from cocotb.triggers import Timer, ClockCycles, RisingEdge, FallingEdge, ReadOnly,with_timeout
from cocotb.utils import get_sim_time as gst
from cocotb.runner import get_runner

# utility function to reverse bits:
def reverse_bits(n,size):
    reversed_n = 0
    for i in range(size):
        reversed_n = (reversed_n << 1) | (n & 1)
        n >>= 1
    return reversed_n

SPI_RESP_MSG = 0x2345
SPI_RESP_MSG = reverse_bits(SPI_RESP_MSG,16)

@cocotb.test()
async def test_a(dut):
    """cocotb test for uart transmit"""
    INPUT_CLOCK_FREQ = 100_000_000
    BAUD_RATE = 9600
    BAUD_BIT_PERIOD = int(INPUT_CLOCK_FREQ / BAUD_RATE)
    CLOCK_PERIOD = 10  # ns

    dut._log.info(f"BAUD_BIT_PERIOD: {BAUD_BIT_PERIOD} clock cycles")
    
    clock = Clock(dut.clk_in, CLOCK_PERIOD, units="ns")
    cocotb.start_soon(clock.start())

    # Reset
    dut._log.info("Holding reset...")
    dut.rst_in.value = 1
    dut.trigger_in.value = 0
    dut.data_byte_in.value = 0b00001111
    await ClockCycles(dut.clk_in, 3)
    assert dut.busy_out.value == 0, "busy_out is not 0 on reset!"
    assert dut.tx_wire_out.value == 1, "tx_wire_out is not 1 on idle"

    # Release reset
    await FallingEdge(dut.clk_in)
    dut.rst_in.value = 0
    await ClockCycles(dut.clk_in, 3)
    await FallingEdge(dut.clk_in)
    # Trigger transmission
    dut._log.info("Setting Trigger")
    dut.trigger_in.value = 1
    await ClockCycles(dut.clk_in, 1, rising=False)
    # dut.data_byte_in.value = 0xAA  # This change shouldn't affect the transmission
    dut.trigger_in.value = 0

    # Log tx_wire_out for each bit period
    tx_log = []
    timeout = BAUD_BIT_PERIOD * 12  # Start bit + 8 data bits + Stop bit + extra margin
    for i in range(timeout):
        if i % BAUD_BIT_PERIOD == 0:
            tx_log.append(dut.tx_wire_out.value)
            dut._log.info(f"Bit {len(tx_log)-1}: busy_out = {dut.busy_out.value}, tx_wire_out = {dut.tx_wire_out.value}")
        
        await FallingEdge(dut.clk_in)
        
        if dut.busy_out.value == 0 and len(tx_log) >= 10:
            dut._log.info(f"Transmission completed after {i} cycles")
            break


    dut._log.info(f"TX wire log: {tx_log}")

    start_bit = tx_log[0]
    data_bits = tx_log[1:9]
    stop_bit = tx_log[9]

    assert start_bit == 0, f"Start bit should be 0, got {start_bit}"
    assert stop_bit == 1, f"Stop bit should be 1, got {stop_bit}"

    received_byte = int(''.join(map(str, reversed(data_bits))), 2)
    assert received_byte == 0x0F, f"Received byte {received_byte:02X} does not match sent byte 0x62"

    dut._log.info("Test completed successfully")

def spi_con_runner():
    """Simulate the counter using the Python runner."""
    hdl_toplevel_lang = os.getenv("HDL_TOPLEVEL_LANG", "verilog")
    sim = os.getenv("SIM", "icarus")
    proj_path = Path(__file__).resolve().parent.parent
    sys.path.append(str(proj_path / "sim" / "model"))
    sources = [proj_path / "hdl" / "uart_transmit.sv"]
    build_test_args = ["-Wall"]
    parameters = {} #!!!change these to do different versions
    sys.path.append(str(proj_path / "sim"))
    runner = get_runner(sim)
    runner.build(
        sources=sources,
        hdl_toplevel="uart_transmit",
        always=True,
        build_args=build_test_args,
        parameters=parameters,
        timescale = ('1ns','1ps'),
        waves=True
    )
    run_test_args = []
    runner.test(
        hdl_toplevel="uart_transmit",
        test_module="test_uart_transmit",
        test_args=run_test_args,
        waves=True
    )

if __name__ == "__main__":
    spi_con_runner()