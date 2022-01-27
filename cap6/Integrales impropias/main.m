% La siguiente funcion realiza el Método de Gauss-Legendre
% Autores
% Jonathan Ramon, David Tello
% Parametros de entrada
% R: funcion en la que se aplicara Gauss-Legendre
% a: limite inferior de la integral
% b: limite superior de la integral
% n: cantidad de intervalos a utilizar

% Parametros de salida 
% r: aproximación al resultado real
% err_prct: error porcentual del método
% err_trun: error de truncamiento del método

clc; clear
fprintf("Integrales impropias. \n ")
syms x 


%ejemplo 1
try
    fprintf ("\nEjemplo 1:\n")
    n=6;
    a=-4; b=Inf;
    R = 1/(x^4+1);
    [r,err_prct,err_trun]=impropias(R,a,b,n);
    fprintf("\n     Función: %s", R);
    fprintf("\n     Intervalo: %i a %i",a,b);
    fprintf("\n     Cantidad de intervalos: %i\n", n);
    fprintf("\n     Integral: %f", r);
    fprintf("\n     Error porcentual: %f", err_prct);
    fprintf("\n     Error truncamiento: %f\n", err_trun);
catch e
    fprintf("Error: %s", e.message);
end

subplot(2,2,1);title('Integrales impropias Ejemplo 1');
hold on; x1 = linspace(a,5,25); y1 = subs(R,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on;


%ejemplo 2
try
    fprintf ("\nEjemplo 2:\n")
    n=6;
    a=1; b=Inf;
    R = exp(-x^2);
    [r,err_prct,err_trun]=impropias(R,a,b,n);
    fprintf("\n     Función: %s", R);
    fprintf("\n     Intervalo: %i a %i",a,b);
    fprintf("\n     Cantidad de intervalos: %i\n", n);
    fprintf("\n     Integral: %f", r);
    fprintf("\n     Error porcentual: %f", err_prct);
    fprintf("\n     Error truncamiento: %f\n", err_trun);
catch e
    fprintf("Error: %s", e.message);
end

subplot(2,2,2);title('Integrales impropias Ejemplo 2');
hold on; x1 = linspace(a,5,25); y1 = subs(R,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on;


%ejemplo 3
try
    fprintf ("\nEjemplo 3:\n")
    n=6;
    a=-Inf ; b=1 ;
    R = 1/(sqrt(2*pi))*exp((-x^2)/2);
    [r,err_prct,err_trun]=impropias(R,a,b,n);
    fprintf("\n     Función: %s", R);
    fprintf("\n     Intervalo: %i a %i",a,b);
    fprintf("\n     Cantidad de intervalos: %i\n", n);
    fprintf("\n     Integral: %f", r);
    fprintf("\n     Error porcentual: %f", err_prct);
    fprintf("\n     Error truncamiento: %f\n", err_trun);
catch e
    fprintf("Error: %s", e.message);
end

subplot(2,2,3);title('Integrales impropias Ejemplo 3');
hold on; x1 = linspace(-5,b,25); y1 = subs(R,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on;