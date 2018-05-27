module top (
	input  clk,
	output LED1,
	output LED2,
	output LED3,
	output LED4,
	output LED5
);

	reg [21:0] counter = 0;
	reg [4:0] testt = 1;
	reg flag = 0;

	always @(posedge clk) begin
		counter <= counter + 2;
	end

	always @(posedge counter[21:21]) begin
		if (flag == 0) begin
			testt <= testt + testt + 1;
			if (testt == 15) begin
				flag = 1;
			end
		end else if (flag == 1) begin
			testt <= testt - ~testt -1;
			if (testt == 0) begin
				flag = 0;
			end
		end
	end

	
	assign {LED5, LED4, LED3, LED2, LED1} = testt;
endmodule
