% Metodo de regresion lineal
% Autores
%  Jonnathan Ramon, David Tello
% Fecha de implementacion: 9/11/2021
% Parametros de entrada
% X: vector de coeficientes
% Y: vector de coeficientes

% parametros de salida
% y: resultado de la regresion lineal

function [y,linea_ajuste] = regresion_lineal(X, Y)
m = length(Y);    % tamaño del vector
n = length(X);    % tamaño del vector
if m == n
% inializacion de variables
sumx = 0;
sumy = 0;
sumxy = 0;
sumx2 = 0;

% realizacion de sumatorias necesaria para encontrar a0 y a1
for i = 1:n  
    sumx = sumx + X(i);
    sumy = sumy + Y(i);
    sumxy = sumxy + X(i)*Y(i);
    sumx2 = sumx2 + X(i)^2;
end

% Calculo de a0 y a1 para aplicar en la formula
xm = sumx / n;
ym = sumy / n;
a1 = (n * sumxy - sumx * sumy) / (n * sumx2 - sumx^2);
a0 = ym - a1 * xm;
fprintf('\nLinea de ajuste = %f*x +%f',a1,a0)
% Calculo de la regracion lineal con valores encontrados previamente
sumatoria = 0;
for k = 1:n
    sumatoria = sumatoria +(Y(k) -a0 -(a1*X(k)))^2;
end
y = sumatoria;  % salida de la regresion lineal
else
   error("Las matrices deben tener el mismo tamaño") 
end

end
