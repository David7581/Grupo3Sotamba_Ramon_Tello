% Autores: Jonnathan Ramon, David Tello, Javier Sotamba
% Fecha: 04/11/21
% Parametros de entrada
% A: matriz de coeficientes
% b: vector de terminos independientes
% x0: vector inicial del sistemas
% tol: tolerancia del resultado
% max: numero maximo de iteraciones

% parametros de salida
% x: el vector de solucion
% it: el numero de iteraciones que se han ocupado 

clc
tol=10^-5;
max=600;
x0=zeros(4,1);
fprintf("Metodo de Gauss_seidel para la resolucion de sistemas lineales de ecuaciones. \n ")

% Ejemplo 1
% Hallar los voltajes del circuito 1
fprintf ("Problema 1.\n")
A = [5, -1, 0, -4; -1, 13, -10, -2; 0, -10, 15, -5; -4, -2, -5, 14];
b = [2; 4; 3; 0];
try
tic
[X] = Gauss_seidel(A,b,x0,tol,max)
tiempo=toc;
fprintf("Tiempo de ejecucion %d \n", tiempo);
catch e
fprintf("Error: %s\n",e.message)
end
