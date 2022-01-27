% Main del punto de medio
% Autores: Jonnathan Ramón-David Tello
% Fecha de implementacion: 15/12/2021
% PARAMETROS DE ENTRADA:
% fxy: funcion a evaluar
% x_0: punto inicial de x
% y_0: punto inicial de y
% h: tamano de paso
% x_f: punto final de x
% PARAMETROS DE SALIDA:
% X: Puntos de x
% Y: Puntos de y calculados

clear; clc
syms x; % Inicializa las variables
fprintf("\nEl metodo del punto medio\n")

% Ejemplo 1
try
    fprintf("\nEjemplo 1\n")
    fxy = -2 * x^3 + 12 * x^2 - 20 * x + 8.5;
    x_0 = 0;
    y_0 = 1;
    h = 0.5;
    x_f = 4;
    [X, Y] = metodo_punto_medio(fxy, x_0, y_0, h, x_f);
    for i = 1:length(X)
        fprintf("\nX=%f\tY=%f", X(1, i), Y(1, i));
    end
    % Grafica 1
    subplot(2, 2, 1); scatter(X, Y, "*"); title("Ejemplo 1");
    hold on 
    plot(X, Y); legend("Puntos calculados", "Aproximacion"); grid on; 
    xlabel("Puntos de X"); ylabel("Puntos de Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end


% Ejemplo 2
try
    fprintf("\n\nEjemplo 2\n")
    fxy = sqrt((x^3)+1);
    x_0 = 3;
    y_0 = 8;
    h = 0.8;
    x_f = 9;
    [X, Y] = metodo_punto_medio(fxy, x_0, y_0, h, x_f);
    for i = 1:length(X)
        fprintf("\nX=%f\tY=%f", X(1, i), Y(1, i));
    end
    % Grafica 2
    subplot(2, 2, 2); scatter(X, Y, "*"); title("Ejemplo 2");
    hold on 
    plot(X, Y); legend("Puntos calculados", "Aproximacion"); grid on; 
    xlabel("Puntos de X"); ylabel("Puntos de Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end



