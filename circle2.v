module top (
	input  clk,
	output LED1,
	output LED2,
	output LED3,
	output LED4,
	output LED5
);

	reg [24:0] counter = 0;
	reg [5:0] testt = 1;

	always @(posedge clk) begin
		counter <= counter + 2;
	end

	always @(posedge counter[24:24]) begin
		testt <= testt + testt + testt[5:5];
	end
	
	assign {LED5, LED4, LED3, LED2, LED1} = testt;
endmodule
