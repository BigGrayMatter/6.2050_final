import cocotb
import os
import random
import sys
import logging
from pathlib import Path
from cocotb.triggers import Timer, RisingEdge, FallingEdge
from cocotb.utils import get_sim_time as gst
from cocotb.runner import get_runner
from cocotb.clock import Clock
from cocotb.binary import BinaryValue

async def reset_dut(dut):
    """Reset the DUT"""
    dut.rst_in.value = 1
    dut.x_in.value = 0
    dut.y_in.value = 0
    dut.valid_in.value = 0
    dut.tabulate_in.value = 0
    await RisingEdge(dut.clk_in)
    await RisingEdge(dut.clk_in)
    dut.rst_in.value = 0
    await RisingEdge(dut.clk_in)

async def input_point(dut, x, y):
    """Input a single point"""
    dut.x_in.value = x
    dut.y_in.value = y
    dut.valid_in.value = 1
    await RisingEdge(dut.clk_in)
    dut.valid_in.value = 0
    await RisingEdge(dut.clk_in)

@cocotb.test()
async def test_center_of_mass_basic(dut):
    """Test basic functionality of center of mass calculator"""
    
    # Start clock
    clock = Clock(dut.clk_in, 10, units="ns")
    cocotb.start_soon(clock.start())
    
    # Reset DUT
    await reset_dut(dut)
    
    # Test case 1: Single point
    x, y = 100, 200
    await input_point(dut, x, y)
    
    # Trigger calculation
    dut.tabulate_in.value = 1
    await RisingEdge(dut.clk_in)
    dut.tabulate_in.value = 0
    
    # Wait for result
    while dut.valid_out.value == 0:
        await RisingEdge(dut.clk_in)
        
    assert dut.x_out.value == x, f"Expected x={x}, got {dut.x_out.value}"
    assert dut.y_out.value == y, f"Expected y={y}, got {dut.y_out.value}"

@cocotb.test()
async def test_center_of_mass_multiple(dut):
    """Test with multiple points"""
    
    clock = Clock(dut.clk_in, 10, units="ns")
    cocotb.start_soon(clock.start())
    
    await reset_dut(dut)
    
    # Input multiple points
    points = [(100, 100), (200, 200), (300, 300)]
    expected_x = sum(p[0] for p in points) // len(points)
    expected_y = sum(p[1] for p in points) // len(points)
    
    for x, y in points:
        await input_point(dut, x, y)
    
    # Trigger calculation
    dut.tabulate_in.value = 1
    await RisingEdge(dut.clk_in)
    dut.tabulate_in.value = 0
    
    # Wait for result
    while dut.valid_out.value == 0:
        await RisingEdge(dut.clk_in)
        
    assert dut.x_out.value == expected_x, \
        f"Expected x={expected_x}, got {dut.x_out.value}"
    assert dut.y_out.value == expected_y, \
        f"Expected y={expected_y}, got {dut.y_out.value}"

@cocotb.test()
async def test_center_of_mass_random(dut):
    """Test with random points"""
    
    clock = Clock(dut.clk_in, 10, units="ns")
    cocotb.start_soon(clock.start())
    
    await reset_dut(dut)
    
    # Generate random points within valid range
    num_points = random.randint(5, 10)
    points = []
    for _ in range(num_points):
        x = random.randint(0, 2**11 - 1)  # 11-bit x
        y = random.randint(0, 2**10 - 1)  # 10-bit y
        points.append((x, y))
    
    expected_x = sum(p[0] for p in points) // len(points)
    expected_y = sum(p[1] for p in points) // len(points)
    
    for x, y in points:
        await input_point(dut, x, y)
    
    # Trigger calculation
    dut.tabulate_in.value = 1
    await RisingEdge(dut.clk_in)
    dut.tabulate_in.value = 0
    
    # Wait for result
    while dut.valid_out.value == 0:
        await RisingEdge(dut.clk_in)
        
    assert dut.x_out.value == expected_x, \
        f"Expected x={expected_x}, got {dut.x_out.value}"
    assert dut.y_out.value == expected_y, \
        f"Expected y={expected_y}, got {dut.y_out.value}"

@cocotb.test()
async def test_center_of_mass_edge_cases(dut):
    """Test edge cases"""
    
    clock = Clock(dut.clk_in, 10, units="ns")
    cocotb.start_soon(clock.start())
    
    # Test case 1: No points before tabulate
    await reset_dut(dut)
    dut.tabulate_in.value = 1
    await RisingEdge(dut.clk_in)
    dut.tabulate_in.value = 0
    await RisingEdge(dut.clk_in)
    
    # Test case 2: Maximum values
    await reset_dut(dut)
    x_max = 2**11 - 1  # Maximum 11-bit value
    y_max = 2**10 - 1  # Maximum 10-bit value
    await input_point(dut, x_max, y_max)
    
    dut.tabulate_in.value = 1
    await RisingEdge(dut.clk_in)
    dut.tabulate_in.value = 0
    
    while dut.valid_out.value == 0:
        await RisingEdge(dut.clk_in)
        
    assert dut.x_out.value == x_max, \
        f"Expected x={x_max}, got {dut.x_out.value}"
    assert dut.y_out.value == y_max, \
        f"Expected y={y_max}, got {dut.y_out.value}"

def divider_runner():
    """Simulate the center of mass calculator"""
    hdl_toplevel_lang = os.getenv("HDL_TOPLEVEL_LANG", "verilog")
    sim = os.getenv("SIM", "icarus")
    proj_path = Path(__file__).resolve().parent.parent
    
    sources = [
        proj_path / "hdl" / "divider.sv",
        proj_path / "hdl" / "center_of_mass.sv"
    ]
    
    # Build arguments
    build_test_args = ["-Wall"]
    parameters = {}
    
    # Set up runner
    runner = get_runner(sim)
    runner.build(
        sources=sources,
        hdl_toplevel="center_of_mass",
        always=True,
        build_args=build_test_args,
        parameters=parameters,
        timescale=('1ns', '1ps'),
        waves=True
    )
    
    # Run tests
    run_test_args = []
    runner.test(
        hdl_toplevel="center_of_mass",
        test_module="test_center_of_mass",
        test_args=run_test_args,
        waves=True
    )

if __name__ == "__main__":
    divider_runner()