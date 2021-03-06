module CPU (entrada,Tx,clock,X,Ty,Y,Tula,memoria,contador,Tz,Z,Ula);

input wire clock;
output [3:0] entrada;
output [3:0] Tx;
output [3:0] Ty;
output [3:0] Tz;
output [3:0] Tula;
output [3:0] Ula;
output [3:0] X;
output [3:0] Y;
output [3:0] Z;
output [3:0] contador;
output [3:0] memoria;

Controle contr(Tx,Ty,Tz,Tula,clock,memoria);
RegistradorX regX(entrada,Tx,clock,X);
RegistradorY regY(clock,Ty,Y,Ula);
RegistradorZ regZ(Y, clock, Tz,Z);
Memoria mem(contador,memoria,entrada);
Contador cont(contador,clock);
ULA ulinhaa(X,Y,Ula,Tula);
  
endmodule
  