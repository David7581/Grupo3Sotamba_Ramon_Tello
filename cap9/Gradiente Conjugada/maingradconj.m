% Main para el metodo de Steepest Descend
% Autores: Jonnathan Ramón-David Tello
% Fecha: 17/01/2022

% PARAMETROS DE ENTRADA:
% f1: Funcion a evaluar
% x0: Vector inicial
% maxiter: Numero maximo de iteraciones
% tol: Error tolerancia

% PARAMETROS DE SALIDA:
% x: Solucion x 
% f(x): Solucion x evaluada en la funcion

clc,clear
%EJEMPLO 1
syms x1 x2
f1= x1-x2+2*x1^2+2*x1*x2+x2^2;
x0= [1 1]; 
maxiter=5;
tol= 1e-3;
fprintf("EJEMPLO1")
try
gradconj(f1,x0,maxiter,tol);
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica 1
figure(1)
subplot 211
fcontour(f1,[-3 3 -2 5], 'LevelStep',10)
grid
hold on
plot (ans(1),ans(2), 'o')

%EJEMPLO 2
syms x1 x2 
f1= -3*(x1-2)^2-4*(x2-3)^2-2*(x2+5)^2;
x0= [4 4]; 
maxiter=3;
tol= 1e-3;
fprintf("EJEMPLO2")
try
gradconj(f1,x0,maxiter,tol);
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica 
figure(2)
subplot 211
fcontour(f1,[-3 3 -2 5], 'LevelStep',10)
grid
hold on
plot (ans(1),ans(2), 'o')