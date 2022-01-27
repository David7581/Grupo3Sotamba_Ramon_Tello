% Autores: Jonnathan Ramón-David Tello
clc
% ejemplo 1
try 
    fprintf ("\nEjemplo 1:\n")
    fxy=  (12*(x.^2))-(20*x)+8.5;
    x_0=0;
    x_f=3;
    h=0.5;
    y_0=2.75;
    [X,Y]=rungekutta(fxy, x_0, y_0, h, x_f) 
    % Grafica 1
    figure(1)
    scatter(X, Y); title("Ejemplo 1");
    hold on
    plot(X, Y); legend("Puntos calculados", "Aproximación"); grid on; 
    xlabel("Eje X"); ylabel("Eje Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end

% ejemplo 2
try 
    fprintf ("\nEjemplo 2:\n")
    fxy=  -2 * x^.3 + 12 * x^.2 - 20 * x + 8.5;
    x_0=2;
    x_f=5;
    h=0.4;
    y_0=4;
    [X,Y]=rungekutta(fxy, x_0, y_0, h, x_f) 
    % Grafica 1
    figure(2)
    scatter(X, Y); title("Ejemplo 2");
    hold on
    plot(X, Y); legend("Puntos calculados", "Aproximación"); grid on; 
    xlabel("Eje X"); ylabel("Eje Y");
    hold off
catch e
    fprintf("Error: %s\n", e.message);
end