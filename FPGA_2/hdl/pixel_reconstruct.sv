`timescale 1ns / 1ps
`default_nettype none

module pixel_reconstruct
    #(
     parameter HCOUNT_WIDTH = 9,
     parameter VCOUNT_WIDTH = 8
     )
    (
     input wire                        clk_in,
     input wire                        rst_in,
     input wire                        camera_pclk_in,
     input wire                        camera_hs_in,
     input wire                        camera_vs_in,
     input wire [7:0]                  camera_data_in,
     output logic                      pixel_valid_out,
     output logic [HCOUNT_WIDTH-1:0]   pixel_hcount_out,
     output logic [VCOUNT_WIDTH-1:0]   pixel_vcount_out,
     output logic [15:0]               pixel_data_out
     );

     // previous value of PCLK
     logic pclk_prev;

     // can be assigned combinationally:
     //  true when pclk transitions from 0 to 1
     logic camera_sample_valid;
     assign camera_sample_valid = (!pclk_prev && camera_pclk_in);
     
     // previous value of camera data, from last valid sample!
     logic last_sampled_hs;
     logic [7:0] last_sampled_data;

     // flag indicating whether the last byte has been transmitted or not.
     logic half_pixel_ready;

	 logic [HCOUNT_WIDTH-1:0] hcount;

     always_ff @(posedge clk_in) begin
        if (rst_in) begin
            pixel_valid_out <= 1'b0;
            pixel_hcount_out <= 0;
            pixel_vcount_out <= 0;
            pixel_data_out <= 0;
            pclk_prev <= 1'b0;
            last_sampled_hs <= 1'b0;
            last_sampled_data <= 8'b0;
            half_pixel_ready <= 1'b0;
			hcount <= 0;
        end else begin
            pclk_prev <= camera_pclk_in;
            pixel_valid_out <= 1'b0;

            if (camera_sample_valid) begin
                last_sampled_hs <= camera_hs_in;

                if (camera_hs_in && camera_vs_in) begin
                    if (half_pixel_ready) begin
                        pixel_valid_out <= 1'b1;
                        pixel_data_out <= {last_sampled_data, camera_data_in};
                        pixel_hcount_out <= hcount;
						hcount <= hcount + 1;
                        half_pixel_ready <= 1'b0;
                    end else begin
                        last_sampled_data <= camera_data_in;
                        half_pixel_ready <= 1'b1;
                    end
                end else begin
                    half_pixel_ready <= 1'b0;
                end

                if (!camera_vs_in) begin
                    pixel_vcount_out <= 0;
                    pixel_hcount_out <= 0;
					hcount <= 0;
                end else if (last_sampled_hs && !camera_hs_in) begin
                    pixel_vcount_out <= pixel_vcount_out + 1;
                    pixel_hcount_out <= 0;
					hcount <= 0;
                end
            end
        end
     end

endmodule

`default_nettype wire