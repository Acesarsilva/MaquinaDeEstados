module Contador(contador,clock);

input clock;
output reg [3:0] contador;

initial begin
	contador = 4'd0;
end

always @(posedge clock)begin
	contador = contador +1;
end	

endmodule
