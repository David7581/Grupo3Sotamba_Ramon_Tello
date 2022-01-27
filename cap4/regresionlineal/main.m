% Metodo de regresion lineal
% Autores
%  Jonnathan Ramon, David Tello
% Fecha de implementacion: 9/11/2021
% Parametros de entrada
% X: vector de coeficientes
% Y: vector de coeficientes

% parametros de salida
% y: resultado de la regresion lineal

clc

% ejemplo 1
fprintf("Regresion lineal ")
fprintf("\nEjemplo 1")
x0=[6 9 11 13 22 26 28 33 35];
y0=[68 67 65 53 44 40 37 34 32];
try 
[y] = regresion_lineal(x0,y0);
figure(1);
linea_ajuste= -1.319562*x0 +75.719986;
plot(x0,y0,'dk');
grid on;
hold on;
plot(x0,linea_ajuste);
legend('Conjunto de datos','Linea de ajuste')
catch e
fprintf("Error: %s\n",e.message)
end

% ejemplo 2
fprintf("\nRegresion lineal  ")
fprintf("\nEjemplo 2")
x0=[1 2 3 4 5 6 7 ];
y0=[3.04 3.05 3.12 3.57 7.82 8.68 9.71];
try 
[y] = regresion_lineal(x0,y0);
figure(2);
linea_ajuste=  0.839286*x0 +0.071429;
plot(x0,y0,'dk');
grid on;
hold on;
plot(x0,linea_ajuste);
legend('Conjunto de datos','Linea de ajuste')
catch e
fprintf("Error: %s\n",e.message)
end
