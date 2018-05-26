module top (
	input  clk,
	output LED1,
	output LED2,
	output LED3,
	output LED4,
	output LED5
);
	reg [21:0] counter = 0;
	reg [4:0] testt = 0;

	always @(posedge clk) begin
		counter <= counter + 1;
	end

	always @(posedge counter[21:21]) begin
		testt <= testt +1;
	end


	assign {LED5, LED4, LED3, LED2, LED1} = testt;
endmodule
