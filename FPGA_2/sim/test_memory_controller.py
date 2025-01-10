import os
from pathlib import Path
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.binary import BinaryValue
from cocotb.runner import get_runner

@cocotb.test()
async def test_memory_controller_basic(dut):
    """Test basic writing and reading from memory controller"""
    
    # Create clock
    clock = Clock(dut.clk_camera, 10, units="ns")
    cocotb.start_soon(clock.start())
    
    # Initialize values
    dut.sys_rst.value = 1
    dut.sw0.value = 1  # Start in DRAWING mode
    dut.centroid_ready.value = 0
    dut.centroid_x.value = 0
    dut.centroid_y.value = 0
    dut.centroid_z.value = 0
    
    # Reset for a few cycles
    for _ in range(10):
        await RisingEdge(dut.clk_camera)
    dut.sys_rst.value = 0
    await RisingEdge(dut.clk_camera)
    
    # Log initial state
    dut._log.info("Starting test in DRAWING mode")
    dut._log.info(f"Initial addra: {dut.addra.value}")
    dut._log.info(f"Initial num_points: {dut.num_points.value}")

    # Test writing several points
    test_points = [
        (50, 60, 10),  # x, y, z
        (80, 90, 100),
        (110, 120, 130),
        (140, 150, 160),
        (170, 180, 190)
    ]
    
    for i, (x, y, z) in enumerate(test_points):
        # Write point
        dut.centroid_ready.value = 1
        dut.centroid_x.value = x
        dut.centroid_y.value = y
        dut.centroid_z.value = z
        await RisingEdge(dut.clk_camera)
        dut.centroid_ready.value = 0
        
        # Wait a few cycles to let write complete
        for _ in range(3):
            await RisingEdge(dut.clk_camera)
            
        # Log write operation
        dut._log.info(f"Wrote point {i}: ({x}, {y}, {z})")
        dut._log.info(f"addra: {dut.addra.value}")
        dut._log.info(f"addrb: {dut.addrb.value}")
        dut._log.info(f"num_points: {dut.num_points.value}")
    
    # Switch to REVIEWING mode
    await RisingEdge(dut.clk_camera)
    dut.sw0.value = 0
    dut._log.info("Switching to REVIEWING mode")
    
    # Wait several cycles to observe reading behavior
    for i in range(30):
        await RisingEdge(dut.clk_camera)
        if dut.projection_done.value:
            dut._log.info(f"Projection {i}: ({dut.x_projection.value}, {dut.y_projection.value})")
            dut._log.info(f"addrb: {dut.addrb.value}")
            dut._log.info(f"issued_read: {int(dut.issued_read.value):04b}")  # Convert to int first

@cocotb.test()
async def test_memory_controller_edge_cases(dut):
    """Test edge cases like switching modes and reset behavior"""
    
    # Create clock
    clock = Clock(dut.clk_camera, 10, units="ns")
    cocotb.start_soon(clock.start())
    
    # Initialize
    dut.sys_rst.value = 1
    dut.sw0.value = 1
    dut.centroid_ready.value = 0
    dut.centroid_x.value = 0
    dut.centroid_y.value = 0
    dut.centroid_z.value = 0
    
    # Reset
    await RisingEdge(dut.clk_camera)
    dut.sys_rst.value = 0
    
    # Write one point
    dut.centroid_ready.value = 1
    dut.centroid_x.value = 100
    dut.centroid_y.value = 200
    dut.centroid_z.value = 300
    await RisingEdge(dut.clk_camera)
    dut.centroid_ready.value = 0
    
    # Quick mode switches
    for _ in range(5):
        await RisingEdge(dut.clk_camera)
        dut.sw0.value = 0  # REVIEWING
        await RisingEdge(dut.clk_camera)
        dut.sw0.value = 1  # DRAWING
        
        dut._log.info(f"Mode switch - addra: {dut.addra.value}")
        dut._log.info(f"Mode switch - addrb: {dut.addrb.value}")
        dut._log.info(f"Mode switch - num_points: {dut.num_points.value}")
    
    # Test reset during operation
    dut.sys_rst.value = 1
    await RisingEdge(dut.clk_camera)
    dut.sys_rst.value = 0
    
    dut._log.info(f"Post reset - addra: {dut.addra.value}")
    dut._log.info(f"Post reset - num_points: {dut.num_points.value}")

def memory_controller_runner():
    """Simulate the memory controller"""
    hdl_toplevel_lang = os.getenv("HDL_TOPLEVEL_LANG", "verilog")
    sim = os.getenv("SIM", "icarus")
    proj_path = Path(__file__).resolve().parent.parent
    
    sources = [
        proj_path / "hdl" / "memory_controller.sv",
        proj_path / "hdl" / "xilinx_true_dual_port_read_first_2_clock_ram.v",
        proj_path / "hdl" / "perspective_projection.sv",
        proj_path / "hdl" / "divider.sv"
    ]
    
    # Build arguments
    build_test_args = ["-Wall"]
    parameters = {}
    
    # Set up runner
    runner = get_runner(sim)
    runner.build(
        sources=sources,
        hdl_toplevel="memory_controller",
        always=True,
        build_args=build_test_args,
        parameters=parameters,
        timescale=('1ns', '1ps'),
        waves=True
    )
    
    # Run tests
    run_test_args = []
    runner.test(
        hdl_toplevel="memory_controller",
        test_module="test_memory_controller",
        test_args=run_test_args,
        waves=True
    )

if __name__ == "__main__":
    memory_controller_runner()