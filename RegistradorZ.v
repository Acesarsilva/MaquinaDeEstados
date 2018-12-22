module RegistradorZ(Y, clock, Tz,Z);
 
input wire [3:0] Y;
input clock;
input wire [3:0] Tz;
output reg [3:0] Z;
 
parameter CLEAR = 4'd0;
parameter HOLD = 4'd1;
parameter LOAD = 4'd2;

always @(posedge clock)begin
    case(Tz)
        CLEAR:begin
			Z = 4'd0;
		end
        HOLD:begin
			Z = Z;
		end
        LOAD:begin
			Z = Y;
		end
    endcase
   
end
 
endmodule
