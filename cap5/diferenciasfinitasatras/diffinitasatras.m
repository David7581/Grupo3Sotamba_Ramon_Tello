% Metodo de diferencias finitas divididas hacia atras
% Autores
% Jonnathan Ramon, David Tello
% Fecha de implementacion: 18/11/2021
% Parametros de entrada
% f: funcion a evaluar
% x0: punto de la derivada
% p: tamano de paso
% Parametros de salida
% f: matriz con las derivadas
function [f] = diffinitasatras(f, x0, p)
syms x; % Variable simbolica
fd = [diff(f), diff(f, 2), diff(f, 3), diff(f, 4)] % Matriz con las derivadas 
fx = (1:6);
 % Agregamos los valores de x0 a la matriz fx
for i = 1:6
    fx(i) = double(subs(f, x, x0));
    x0 = x0 + p;
end
% Formulas de diferencias finitas divididas hacia adelante
f1 = (3 * fx(1) - 4 * fx(2) + fx(3)) / (2 * p);
f2 = (2 * fx(1) - 5 * fx(2) + 4 * fx(3) - fx(4)) / (p^2);
f3 = (5 * fx(1) - 18 * fx(2) + 24 * fx(3) - 14 * fx(4) + 3 * fx(5)) / (2 * p^3);
f4 = (3 * fx(1) - 14 * fx(2) + 26 * fx(3) - 24 * fx(4) + 11 * fx(5) - 2 * fx(6)) / (p^4);
f=[f1, f2, f3, f4]; % Matriz con las derivadasend
end