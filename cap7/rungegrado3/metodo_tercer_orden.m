% Funcion para el metodo de runge-kutta, tercer orden.
% Autores: Jonnathan Ramon-David Tello
% Fecha de implementacion: 17/12/2021
% PARAMETROS DE ENTRADA:
% fxy: funcion a evaluar
% x_0: punto inicial de x
% y_0: punto inicial de y
% h: tamano de paso
% x_f: punto final de x
% PARAMETROS DE SALIDA:
% X: Puntos de x
% Y: Puntos de y calculados
function [X, Y] = metodo_tercer_orden(fxy, x_0, y_0, h, x_f)
syms x y; % Inicializacion de variables
% Constantes de formulas
a_1 = 1 / 6;
a_2 = 2 / 3;
a_3 = 1 / 6;
p_1 = 1 / 2;
p_2 = 1;
q_11 = 1 / 2;
q_21 = -1;
q_22 = 2;
X = x_0:h:x_f; % Creacion de matriz con valores de x
Y = (1:length(X)); % Creacion de array vacio para valores calculados de y
Y(1, 1) = y_0;
for i = 1:length(X) - 1
    k_1 = subs(fxy, {x y}, {X(i) y_0});
    k_2 = subs(fxy, {x y}, {(X(i) + p_1 * h) (y_0 + q_11 * k_1 * h)});
    k_3 = subs(fxy, {x y}, {(X(i) + p_2 * h) (y_0 + q_21 * k_1 * h + q_22 * k_2 * h)});
    y_1 = y_0 + (a_1 * k_1 + a_2 * k_2 + a_3 * k_3) * h; % Cálculo de y
    Y(1, i + 1) = y_1; % Se agrega los valores calculados de y a la matriz
    y_0 = y_1; % Se actualiza el valor de y_0
end
end

