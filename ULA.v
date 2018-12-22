module ULA(X,Y,Ula,Tula);

input wire [3:0] X;
input wire [3:0] Y;
input wire [3:0] Tula;
output wire [3:0] Ula;

assign Ula = X + Y;

endmodule
