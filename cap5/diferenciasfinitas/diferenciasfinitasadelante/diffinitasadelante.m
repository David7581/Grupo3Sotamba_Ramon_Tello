% Metodo de diferencias finitas divididas hacia adelante
% Autores
%  Jonnathan Ramon, David Tello
% Fecha de implementacion: 18/11/2021
% Parametros de entrada
% f: funcion a evaluar
% x0: punto de la derivada
% p: tamaño de paso
% Parametros de salida
% f: matriz con las derivadas
function [f] = diffinitasadelante(f, x0, p)
syms x; % Variable simbolica
fd = [diff(f), diff(f, 2), diff(f, 3), diff(f, 4)] % Matriz con las derivadas 
fx = (1:6);
% Agregamos los valores de x0 a la matriz fx
for i = 1:6
    fx(i) = double(subs(f, x, x0));
    x0 = x0 + p; 
end
% Formulas de diferencias finitas divididas hacia adelante
f1 = (-fx(3) + 4 * fx(2) - 3 * fx(1)) / (2 * p);
f2 = (-fx(4) + 4 * fx(3) -5 * fx(2) + 2 * fx(1)) / (p^2);
f3 = (-3 * fx(5) + 14 * fx(4) - 24 * fx(3) + 18 * fx(2) - 5 * fx(1)) / (2 * p^3);
f4 = (-2 * fx(6) + 11 * fx(5) -24 * fx(4) + 26 * fx(3) - 14 * fx(2) + 3 * fx(1)) / (p^4);
f=[f1, f2, f3, f4]; % Matriz con las derivadas
end