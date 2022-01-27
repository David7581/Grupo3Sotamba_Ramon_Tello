% Función para el método de punto medio 
% Autores: Jonnathan Ramón-David Tello
% Fecha de implementacion: 15/12/2021
% PARAMETROS DE ENTRADA:
% fxy: funcion a evaluar
% x_0: punto inicial de x
% x_f: punto final de x
% y_0: punto inicial de y
% h: paso

% PARAMETROS DE SALIDA:
% X: Puntos de x
% Y: Puntos de y 

function [X, Y] = metodo_punto_medio(fxy, x_0, y_0, h, x_f)
syms x y; % Definir e iniciar variables
%Definir constantes para el metodo
a_1 = 0;
a_2 = 1;
p_1 = 1 / 2;
q_11 = 1 / 2;
X = x_0:h:x_f; % Matriz con valores de x
Y = (1:length(X)); % Array para los valores de y
Y(1, 1) = y_0;
fprintf('\n     %+4s     %s ',"x","Salida");
for i = 1:length(X) - 1
    k_1 = subs(fxy, {x y}, {X(i) y_0});
    k_2 = subs(fxy, {x y}, {(X(i) + p_1 * h) (y_0 + q_11 * k_1 * h)});
    y_1 = y_0 + (a_1 * k_6 + a_2 * k_2) * h; % Calculo de y
    Y(1, i + 1) = y_1; % Actualizar valores de y en la matriz
    y_0 = y_1; % Actualizar valores de y0
end
end
