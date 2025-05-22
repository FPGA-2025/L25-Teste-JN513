module LedShifter #(
    parameter CLK_FREQ = 25_000_000 
) (
    input  wire clk,
    input  wire rst_n,
    output wire [7:0] leds
);

localparam ONE_SECOND  = CLK_FREQ;
localparam HALF_SECOND = CLK_FREQ / 2;

reg [32:0] counter;
reg  [7:0] led_counter;

always @(posedge clk ) begin
    if(!rst_n) begin
        counter     <= 32'h0;
        led_counter <= 8'h1F;
    end else begin
        if(counter >= HALF_SECOND - 1) begin
            counter     <= 1'b0;
            led_counter <= {led_counter[6:0], led_counter[7]};
        end else begin
            counter <= counter + 1'b1;
        end
    end
end

assign leds = led_counter;
    
endmodule
