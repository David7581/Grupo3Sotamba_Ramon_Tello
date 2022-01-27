% Funcion para el método de Gauss Laguerre
% Autores: Jonnathan Ramón,David Tello
% Fecha de implementacion: 09/12/2021
% Parametros de entrada
% R: función en la que se aplicara Gauss-Hermite
% R1: función multiplicada por exp(-x^2)
% n: número de nodos

% Parametros de salida 
% r: aproximación al resultado real
% err_prct: error porcentual del método

clc; clear
fprintf("Método de Gauss-Hermite. \n ")
syms x; a=0; b=36;

% ejemplo 1

try
    fprintf ("\nEjemplo 1:\n")
    R = 1/6*x +25; 
    R1 = exp(-(x^2)) * 1/6*x +25;  
    n = 20;
    [r,err_prct] = hermite(R,R1,n);
    fprintf("\n     Integral: %f", r);
catch e
    fprintf("Error: %s\n",e.message)
end
subplot(2,2,1);title('Metodo de Hermite Ejemplo 1');
hold on; x1 = linspace(-10,10,n); y1 = subs(R1,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on; 



% ejemplo 2
try
    fprintf ("\nEjemplo 2:\n")
    R = 5.38*x+4.138; 
    R1 = exp(-(x^2)) * 5.38*x+4.138;
    n = 15; 
    [r,err_prct] = hermite(R,R1,n);
    fprintf("\n     Integral: %f", r);
catch e
    fprintf("Error: %s\n",e.message)
end

subplot(2,2,2);title('Metodo de Hermite Ejemplo 2');
hold on; x1 = linspace(-10,10,n); y1 = subs(R1,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on; 
