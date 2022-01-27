% Metodo de diferencias finitas
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 22/12/2021
% Parametros de entrada
% y1: Valor medio de y
% y0: Valor incial de y
% y2: Valor final de y
% x1: Valor final de x
% p: Valor de paso
% h: coeficiente de transferencia
% n: nodos
% Parametros de salida
% x: Puntos de x
% y: Puntos de y

function [x, y] = diffinitas(y1, y0, y2, x1, p, h, n)
if n >=1 
T = zeros(n, n); % Creamos una matriz T, definida por el numero de nodos
b = zeros(n, 1); % Creamos una matriz b, definida por el numero de nodos
%Matrices con los valores de x y
x = (0:p:x1); 
y = (0:p:x1); 
% Valor por defecto que se reemplazara en la matriz T
for i = 1:n - 1
    T(i + 1, i) = -1; 
    T(i, i + 1) = -1;  
end
for j = 1:n
    T(j, j) =  2 + h * p^2
end
%Valores por defecto que se remplazaran en la matriz b
b_m = h * p^2 * y1;  
b_i = b_m + y0;  
b_f = b_m + y2; 
b(1, 1) = b_i; 
b(n, 1) = b_f;
for k = 2: n - 1
    b(k, 1)= b_m
end 
R = T \ b ;% Valores de y calculados
% Agrega los valores de y calculados
for l = 2:length(y) 
    y(1, l) = R(l - 1, 1);
end
else 
    error("\n Numero de iteraciones menor que 1. \n")
end
