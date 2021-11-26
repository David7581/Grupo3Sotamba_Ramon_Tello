% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Fecha: 4/11/21

% Problema 1
clc
tol=10^-5;
max=20;
x0=zeros(4,1);
fprintf ("Metodo de jacobi para la resolucion de sistemas lineales de ecuaciones. \n")
fprintf("Problema 1\n");
A = [5, -1, 0, -4; -1, 13, -10, -2; 0, -10, 15, -5; -4, -2, -5, 14];
b = [2; 4; 3; 0];
try
tic
[x] = Jacobi(A,b,x0,tol,max);
tiempo=toc;
X = Xx
fprintf("Tiempo de ejecucion %d \n", tiempo);
catch e
fprintf("Error: %s\n",e.message)
end

