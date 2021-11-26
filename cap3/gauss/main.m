% Autores: Jonnathan Ramon, Javier Sotamba, David Tello
% Fecha de implementacion: 21/10/2021
% Parametros de entrada y salida
% a: matriz cuadrada de orden n
% b: matriz rectangular de orden nx1

clc %Limpiar e iniciar el programa
clear
fprintf ("Metodo de gauss para la resolucion de sistemas lineales de ecuaciones. \n")

% Ejemplo 1
fprintf ("Ejemplo 1.\n")
A = [5, -1, 0, -4; -1, 13, -10, -2; 0, -10, 15, -5; -4, -2, -5, 14];
B = [2; 4; 3; 0];

try
tic
[X]=gauss(A,B)
tiempo = toc
fprintf("La solucion del sistema es %d \n", x);
fprintf("Tiempo de ejecucion %d \n", tiempo);
catch e 
fprintf("Error: %s\n",e.message)
end


