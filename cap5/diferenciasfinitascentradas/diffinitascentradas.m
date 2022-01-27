% Metodo de diferencias finitas divididas centradas
% Autores
% Jonnathan Ramon, David Tello
% Fecha de implementacion: 18/11/2021
% Parametros de entrada
% f: funcion a evaluar
% x0: punto de la derivada
% p: tamano de paso
% Parametros de salida
% f: matriz con las derivadas
function [f] = diffinitascentradas(f, x0, p)
syms x; % Variable simbolica
fd = [diff(f), diff(f, 2), diff(f, 3), diff(f, 4)] % Matriz con las derivadas 
fx1 = (1:4);
x1=x0;
% Agregamos los valores de x0 a la matriz fx1
for i = 1:4
    fx1(i) = double(subs(f, x, x0))
    x1 = x1 - p; 
end
x2 = x0;
fx2 = (1:4); 
for i = 1:4
    fx2(i) = double(subs(f, x, x2));
    x2 = x2 + p; % Agregamos los valores de x+i a la matriz fx2
end
% Formulas de diferencias finitas divididas hacia adelante
f1 = (-fx2(3) + 8 * fx2(2) - 8 * fx1(2) + fx1(3)) / (12 * p);
f2 = (-fx2(3) + 16 * fx2(2) -30 * fx1(1) + 16 * fx1(2) - fx1(3)) / (12 * p^2);
f3 = (-fx2(4) + 8 * fx2(3) - 13 * fx2(2) + 13 * fx1(2) - 8 * fx1(3) + fx1(4)) / (8 * p^3);
f4 = (-fx2(4) + 12 * fx2(3) - 39 * fx2(2) + 56 * fx2(1) - 39 * fx1(2) + 12 * fx1(3) - fx1(4)) / (6 * p^4);
f=[f1, f2, f3, f4]; % Matriz con las derivadas numericas
end
