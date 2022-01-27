% Main de el Método de Gauss-Laguerre
% Autores: Jonnathan Ramón, David Tello
% Fecha de implementacion: 06/12/2021
% Parametros de entrada
% R: función en la que se aplicara Gauss-Laguerre
% R1: función multiplicada por exp(-x)
% n: número de nodos
% Parametros de salida 
% r: aproximación al resultado
% err_prct: error porcentual del método

clc; clear
fprintf("Metodo de Gauss-Laguerre. \n ")
syms x; a=0; b=Inf;

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

subplot(2,2,1);title('Metodo de Leguerre Ejemplo 1');
hold on; x1 = linspace(a,10,n); y1 = subs(R1,x1); 
hold on; plot(x1,y1,'o');
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',2);grid on; 
legend('datos conocidos', 'interpolacion')

% ejemplo 2
try
    fprintf ("\nEjemplo 2:\n")
    R = (cos(x)/exp(2*x)); 
    R1 = exp(-x) * (cos(x)/exp(2*x));
    n = 24; 
    [r,err_prct] = gauss_laguerre(R,R1,n);
    fprintf("\n     Integral: %f", r);
catch e
    fprintf("Error: %s", e.message);
end

subplot(2,2,2);title('Metodo de Leguerre Ejemplo 2');
hold on; x1 = linspace(a,10,n); y1 = subs(R1,x1); 
hold on; plot(x1,y1,'o');
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',2);grid on; 
legend('datos conocidos', 'interpolacion')
