% Parámetros de entrada y salida
% r: Raíz encontrada por el método
%iteraciones= numero de iteraciones realizadas en la funcion 
% xI: Intervalo izquierdo
% xD: Intervalo derecho
% f: Función que se evaluará
% tol: Error de tolerancia 
% max: Iteraciones máximas
clc
tol= 10^-5;
max=100;
fprintf("Metodo biseccion. \n")

% Ejemplo 1
fprintf ("Problema 1. \n")
g = @(x) -0.001*x^.2 -0.42*x + 3.07;
xI = 0;
xD = 9;

try
tic
[r,iteraciones] = biseccion(xI, xD, g, tol, max);
tiempo = toc;
fprintf('El tiempo de ejecucion es %d \n',tiempo);
fprintf('La raiz de la funcion es y=%d, el numero de iteraciones es %d',r,iteraciones);

catch e
fprintf("Error: %s\n",e.message)
end
