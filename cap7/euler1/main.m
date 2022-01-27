% Autores: Jonnathan Ramón-David Tello
% Fecha de implementacion: 12/12/2021
clc
syms x
syms y
% ejemplo 1
try
    fprintf('Metodo de RungeKutta grado 3')
    fprintf ("\nEjemplo 1:\n")
    x = 0;            
    y = 2.75;            
    xf = 3;           
    h = 0.5;          
    n = (xf-x)/h;     
    f = @(x) (12*(x.^2))-(20*x)+8.5;
    [X,Y] = euler(f,x,y,h,n,xf)
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
    fprintf('Metodo de Euler')    
    fprintf ("\nEjemplo 2:\n")
    x = 2;            
    y = 4;            
    xf = 5;           
    h = 0.5;          
    n = (xf-x)/h;     
    f = @(x) (-2*(x.^3))+(12*(x.^2))-(20*x)+8.5;
    [X,Y] = euler(f,x,y,h,n,xf)
    % Grafica 2
    figure(2)
    scatter(X, Y); title("Ejemplo 2");
    hold on
    plot(X, Y);
    legend("Puntos calculados", "Aproximación"); grid on; 
    xlabel("Eje X"); ylabel("Eje Y");
   
catch e
    fprintf("Error: %s\n", e.message);
end