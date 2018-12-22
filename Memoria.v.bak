module Memoria (contador, memoria, entrada);

input wire [3:0] contador;
output reg [3:0] memoria;
output reg [3:0] entrada;

parameter RESET = 4'd0;
parameter START = 4'd1;
parameter ADD = 4'd2;
parameter ADD2 = 4'd3;
parameter DIV = 4'd4;
parameter END = 4'd5;

always@(contador)begin
	case(contador)
		RESET: begin
			memoria = 4'd0;
	    end
	    START: begin
			memoria = 4'd1;
			entrada = 4'd2;
	    end
		ADD: begin
			memoria = 4'd2;
			entrada = 4'd4;
		end
		ADD2: begin
			memoria = 4'd3;
		end
		DIV: begin
			memoria = 4'd4;
		end
		END: begin
			memoria = 4'd5;
		end
    endcase
end
endmodule
