% Main de el Método de Gauss-Laguerre
% Autores: Jonnathan Ramón, David Tello
% Fecha de implementacion: 06/12/2021
% PARAMETROS DE ENTRADA
% R: función en la que se aplicara Gauss-Laguerre
% R1: función multiplicada por exp(-x)
% n: número de nodos
% PARAMETROS DE SALIDA
% r: aproximación al resultado real
% err_prct: error porcentual del método

clc; clear
fprintf("Metodo de Gauss-Laguerre. \n ")
syms x; a=0; b=36;

% ejemplo 1
try
    fprintf ("\nEjemplo 1:\n")
    R = (1/6)*x +25; 
    R1 = exp(-x) * ((1/6)*x +25);
    n = 20; 
    [r,err_prct] = gauss_laguerre(R,R1,n);
    fprintf("\n     Integral: %f", r);
catch e
    fprintf("Error: %s", e.message);
end
figure(1);
title('Metodo de Leguerre Ejemplo 1');
hold on; x1 = linspace(a,10,n); y1 = subs(R1,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on; 
% ejemplo 1
try
    fprintf ("\nEjemplo 1:\n")
    R = 5.38*x+4.138; 
    R1 = exp(-x) * (5.38*x+4.138);
    n = 20; 
    [r,err_prct] = gauss_laguerre(R,R1,n);
    fprintf("\n     Integral: %f", r);
catch e
    fprintf("Error: %s", e.message);
end
figure(1);
title('Metodo de Leguerre Ejemplo 1');
hold on; x1 = linspace(a,10,n); y1 = subs(R1,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on; 

