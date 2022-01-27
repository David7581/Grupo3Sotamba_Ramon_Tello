% La siguiente función realiza la regla del trapecio 
% Autores
% David Tello, Jonnathan Ramón
% Fecha de implementacion: 05/01/2021
clc
fprintf("Cuadratura de Gauss-Chebyshev\n");
% Ejemplo 1
try
    fprintf("\nEjemplo 1:\n");
    syms x;
    % Datos para rezalizar la integral numerica
    y1 = (1/6)*x +25;
    n1 = 10;
    c1 = 1;
    [I1, error_trunc1] = metodo_gauss_chebyshev(y1, n1, c1);
    fprintf("\n     Integral: %f", I1);
catch e
    fprintf("Error: %s", e.message);
end
% Gráfica 1
X = -1:0.1:1;
Y1 = 1:length(X);
syms x;
funcion1 = int(y1);
for i = 1:length(X)
    x_ = X(1, i);
    Y1(1, i) = double(subs(funcion1, x, x_));
end
figure(1);
title('Metodo de Chebyshev Ejemplo 1');
hold on; bar(X,Y1)
xlabel('Eje x'); ylabel('Eje y');
plot(X,Y1,'red','LineWidth',3);grid on;


% Ejemplo 2
try
    fprintf("\nEjemplo 2:\n");
    syms x;
    y2 = 5.38*x+4.138;
    tol2 = 1e-8;
    n2 = 2;
    c2 = 18;
    [I2, error_trunc2] = metodo_gauss_chebyshev(y2, n2, c2);
    fprintf("\n     Integral: %f", I2);
catch e
    fprintf("Error: %s", e.message);
end
% Gráfica 2
X = -1:0.1:1;
Y2 = 1:length(X);
syms x;
funcion2 = int(y2);
for i = 1:length(X)
    x_ = X(1, i);
    Y2(1, i) = double(subs(funcion2, x, x_));
end
figure(2);
title('Metodo de Chebyshev Ejemplo 2');
hold on; bar(X,Y2)
xlabel('Eje x'); ylabel('Eje y');
plot(X,Y2,'red','LineWidth',3);grid on;

