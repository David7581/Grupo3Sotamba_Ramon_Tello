% La siguiente funcion realiza la Linealización de relaciones no lineales
% se a usado para ello el modelo la ecuacion exponencial, ecuacion de
% potencia y la ecuacion de razon de crecimiento
% Autores
% Jonathan Ramon, David Tello
% Parametros de entrada
% X: vector de coeficientes
% Y: vector de coeficientes

% Parametros de salida
% ys1: ecuacion simbolica para el modelo exponencial
% ys2: ecuacion simbolica para el modelo de potencia
% ys3: ecuacion simbolica para el modelo de razon de crecimiento
% ecuacion1: ecuacion evaluada para el modelo exponencial
% ecuacion2: ecuacion evaluada para el modelo de potencia
% ecuacion3: ecuacion evaluada para el modelo de razon de crecimiento

clc
fprintf("Linealizacion de relaciones no lineales. \n ")

% ejemplo 1
fprintf ("Ejemplo 1. \n")
x0=[6 9 11 13 22 26 28 33 35];
y0=[68 67 65 53 44 40 37 34 32];

try 
[ys1,ys2,ys3,ecuacion1,ecuacion2,ecuacion3] = linealizacion(X,Y);
catch e
fprintf("Error: %s\n",e.message)
end
fprintf ("Ecuacion exponencial. \n")
ys1
fprintf ("Ecuacion de potencia. \n")
ys2
fprintf ("Ecuacion razon de crecimineto. \n")
ys3
%Ajuste exponencial
subplot(2,2,1); scatter(log(X),log(Y)); title('Ajuste exponencial');
hold on 
plot(X,ecuacion1); legend('Datos medidos','Recta con Ajuste Exponencial');grid on; 
xlabel('Puntos de X'); ylabel('Puntos de Y');
hold off

%Ajuste potencial
subplot(2,2,2); scatter(log10(X),log10(Y)); title('Ajuste potencial');
hold on 
plot(X,ecuacion2); legend('Datos medidos','Recta con Ajuste de Potencias');grid on; 
xlabel('Puntos de X'); ylabel('Puntos de Y');
hold off

%Ajuste razon de crecimiento
subplot(2,2,3);scatter((1./X),(1./Y));title('Ajuste tasa de crecimiento');
hold on 
plot(X,ecuacion3); legend('Datos medidos','Recta de con Ajuste de Razon de Crecimiento');grid on; 
xlabel('Puntos de X'); ylabel('Puntos de Y');
hold off
