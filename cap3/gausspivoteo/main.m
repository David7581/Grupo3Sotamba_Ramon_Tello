% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Fecha: 28/10/21
% Problema 1
clc
fprintf ("Metodo de gauss con pivote para la resolucion de sistemas lineales de ecuaciones. \n")
fprintf ("Ejemplo 1. \n")
A = [5, -1, 0, -4; -1, 13, -10, -2; 0, -10, 15, -5; -4, -2, -5, 14];
b = [2; 4; 3; 0];
try
tic
[A,b] = gausspivoteo(A,b);
tiempo=toc;
x = inv(A)*b;
X = x.'
catch e
fprintf("Error: %s\n",e.message)
end
fprintf("Tiempo de ejecucion %d \n", tiempo);

