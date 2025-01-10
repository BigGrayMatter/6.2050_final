module memory_controller (
    input wire clk_camera,
    input wire sys_rst,
    input wire sw0,  // Switch for mode selection
    input wire centroid_ready,
    input wire [8:0] centroid_x,
    input wire [7:0] centroid_y,
    input wire [8:0] centroid_z,
    
    output logic [8:0] x_projection,
    output logic [7:0] y_projection,
    output logic projection_done,
    
    // Debug outputs
    output logic [11:0] addra,
    output logic [11:0] addrb,
    output logic [11:0] num_points,
    output logic [3:0] issued_read
);

    // Mode definitions
    typedef enum logic [1:0] {
        DRAWING,
        REVIEWING
    } mode_t;

    mode_t mode, last_mode;
    logic [25:0] point_data;

    // Mode Control
    always_ff @(posedge clk_camera) begin
        if (sys_rst) 
            mode <= DRAWING;
        else 
            mode <= sw0 ? DRAWING : REVIEWING;
    end

    // Address Counter for Drawing Mode
    always_ff @(posedge clk_camera) begin
        if (sys_rst) begin
            addra <= 0;
            num_points <= 0;
        end else if (mode == DRAWING && centroid_ready) begin
            addra <= (addra == 2249) ? 0 : addra + 1;
            num_points <= (num_points == 2250) ? 2250 : num_points + 1;
        end
    end

    always_ff @(posedge clk_camera) begin
        if (sys_rst) begin
            addrb <= 0;
            issued_read <= 0;
        end else begin
            issued_read[3:1] <= issued_read[2:0];  // Shift register runs every cycle
            
            if (mode != last_mode) begin
                addrb <= 0;
                issued_read[0] <= 1'b1;  // Initial read on mode change
            end else if (projection_done) begin  // Normal operation - wait for projection ready
                if (num_points > 0) begin
                    if (addrb + 1 < num_points) begin
                        addrb <= addrb + 1;
                    end else begin
                        addrb <= 0;
                    end
                    issued_read[0] <= 1'b1;
                end
            end else if (centroid_ready && (num_points == 1)) begin  // First point trigger!
                // When we get our very first point, trigger initial read
                addrb <= 0;
                issued_read[0] <= 1'b1;
            end else begin
                issued_read[0] <= 1'b0;
            end
        end
      end

    xilinx_true_dual_port_read_first_2_clock_ram #(
        .RAM_WIDTH(26),
        .RAM_DEPTH(2250),
        .RAM_PERFORMANCE("HIGH_PERFORMANCE")
    ) point_memory (
        .addra(addra),
        .addrb(addrb),
        .dina({centroid_x, centroid_y, centroid_z}),
        .dinb(26'b0),
        .clka(clk_camera),
        .clkb(clk_camera),
        .wea(centroid_ready && (mode == DRAWING)),
        .web(1'b0),
        .ena(1'b1),
        .enb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .douta(),
        .doutb(point_data)
    );

    // Perspective Projection Instance
    perspective_projection proj (
        .clk_in(clk_camera),
        .rst_in(sys_rst),
        .x_in(point_data[25:17]),
        .y_in(point_data[16:9]),
        .z_in(point_data[8:0]),
        .valid_in(issued_read[3]),
        .x_out(x_projection),
        .y_out(y_projection),
        .valid_out(projection_done)
    );

endmodule
