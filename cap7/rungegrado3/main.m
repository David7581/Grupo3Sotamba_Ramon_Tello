% Main metodo runge-kutta,tercer orden.
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
clc
% Ejemplo 1
try
    syms x y; % Inicializa las variables
    fxy_2 = (12*(x.^2))-(20*x)+8.5;
    x_0_2 = 0;
    y_0_2 = 2.75;
    h_2 = 0.5;
    x_f_2 = 3;
    fprintf("\n\nEjemplo 1\n");
    [X2, Y2] = metodo_tercer_orden(fxy_2, x_0_2, y_0_2, h_2, x_f_2);
    for i = 1:length(X2) % Imprime una tabla de los valores de x e y
        fprintf("\nX=%f\tY=%f", X2(1, i), Y2(1, i));
    end
    % Grafica 2
    subplot(2, 2, 1); scatter(X2, Y2, "*"); title("Ejemplo 1");
    hold on 
    plot(X2, Y2); legend("Puntos calculados", "Aproximación"); grid on; 
    xlabel("Puntos de X"); ylabel("Puntos de Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end
% Ejemplo 2
try
    syms x y; % Inicializa las variables
    fxy_3 = 20 * x + 8.5;
    x_0_3 = 0;
    y_0_3 = 1;
    h_3 = 0.5;
    x_f_3 = 4;
    fprintf("\n\nEjemplo 2\n");
    [X3, Y3] = metodo_tercer_orden(fxy_3, x_0_3, y_0_3, h_3, x_f_3);
    for i = 1:length(X3)  % Imprime una tabla de los valores de x e y
        fprintf("\nX=%f\tY=%f", X3(1, i), Y3(1, i));
    end
    % Grafica 3
    subplot(2, 2, 2); scatter(X3, Y3, "*"); title("Ejemplo 2");
    hold on 
    plot(X3, Y3); legend("Puntos calculados", "Aproximación"); grid on; 
    xlabel("Puntos en X"); ylabel("Puntos en Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end