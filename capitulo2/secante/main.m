% La siguiente funci�n relaiza el m�todo de Secante para encontrar las
% ra�ces
% autores
%David Tello, Jonnathan Ramon, Javier Sotamba

% Par�metros de entrada y salida
% r: Ra�z encontrada por el m�todo
% iteraciones: el numero de iteraciones que se necesito para encontrar la raiz
% xI: Intervalo izquierdo donde se evaluar�
% xD: Intervalo derecho donde se evaluar�
% f: Funci�n que se evaluar�
% tol: Error de tolerancia 
% max: Iterasiones m�ximas
clc
tol=10^-5;
max=200;
fprintf("Metodo de la secante para ecuaciones no lineales. \n")
%Ejemplo 1
fprintf ("Ejemplo 1. \n")
xI=0;
xD=10;
f= @(x)  -0.001*x^2 -0.42*x + 3.07;
try
tic
[r,iteraciones]= secante(xI,xD,f,tol,max);
tiempo=toc;
fprintf('El tiempo de ejecucion es:  %d\n',tiempo);
fprintf('El valor de corte en y=%d,El numero de iteraciones es: %d',r,iteraciones);
catch e
fprintf("Error: %s\n",e.message)
end
