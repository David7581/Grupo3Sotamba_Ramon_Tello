% Metodo de diferencias finitas 
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 22/12/2021
clc
try
    y1 = 20;
    y0 = 40;
    y2 = 200;
    x1 = 10;
    p = 2;
    h= 0.01;
    n = 5;
    [x1, y1] = diffinitas(y1, y0, y2, x1, p, h, n);
    fprintf("\nEjemplo 1\n")
    for i = 1:length(x1)
        fprintf("\nX=%f\tY=%f", x1(1, i), y1(1, i));
    end
    % Grafica 1
    figure(1);
    scatter(x1, y1, "*"); title("Ejemplo 1");
    hold on
    plot(x1, y1); legend("Puntos", "Aproximacion"); grid on;
    xlabel("Puntos de X"); ylabel("Puntos de Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end

try
    y1 = 20;
    y0 = 40;
    y2 = 200;
    x1 = 20;
    p = 4;
    h= 0.01;
    n = 6;
    [x1, y1] = diffinitas(y1, y0, y2, x1, p, h, n);
    fprintf("\nEjemplo 2\n")
    for i = 1:length(x1)
        fprintf("\nX=%f\tY=%f", x1(1, i), y1(1, i));
    end
    % Grafica 2
    figure(2);
    scatter(x1, y1, "*"); title("Ejemplo 2");
    hold on
    plot(x1, y1); legend("Puntos", "Aproximacion"); grid on;
    xlabel("Puntos de X"); ylabel("Puntos de Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end