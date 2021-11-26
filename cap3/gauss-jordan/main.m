% Autores: Jonnathan Ramon, David Tello, Javier Sotamba
% Fecha: 28/10/21
% Descripción: Programa para aplicar el método de Gauss Jordan, y hallar las soluciones de una matriz

clc
fprintf ("Metodo de gauss-jordan para la resolucion de sistemas lineales de ecuaciones. \n")

% Ejemplo 1
% Hallar los voltajes del circuito 1
fprintf ("Ejemplo 1.\n")
A = [5 -1 0, -4; -1 13 -10 -2; 0 -10 15 -5; -4 -2 -5 14];
b = [2 4 3 0]';

try
tic
[X] = Gauss_jordan(A,b)
tiempo=toc

fprintf("Tiempo de ejecucion %d \n", tiempo);
catch e
fprintf("Error: %s\n",e.message)
end
