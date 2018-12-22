module RegistradorY(clock,Ty,Y,Ula);

input wire [3:0] Ula;
input clock;
input wire [3:0] Ty;
output reg [3:0] Y;

parameter CLEAR = 4'd0;
parameter HOLD = 4'd1;
parameter LOAD = 4'd2;
parameter SHFTR = 4'd3;

always @(posedge clock)begin
	case(Ty)
		CLEAR:begin
			Y = 4'd0;
		end
		HOLD:begin
			Y = Y;
		end
		LOAD:begin 
			Y = Ula;
		end
		SHFTR:begin
			Y = Y>>1;
		end
	endcase
end
endmodule
