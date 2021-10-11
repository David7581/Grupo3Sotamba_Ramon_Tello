% Par�metros de entrada y salida
% r: Ra�z encontrada por el m�todo
%iteraciones= numero de iteraciones realizadas en la funcion 
% xI: Intervalo izquierdo
% xD: Intervalo derecho
% f: Funci�n que se evaluar�
% tol: Error de tolerancia 
% max: Iteraciones m�ximas

clc
tol= 10^-5;
max=100;
fprintf("Metodo biseccion. \n")

% Ejemplo 1
fprintf ("Ejemplo 1. \n")
g = @(x) 1./x^12 -1./x.^6 -0.2;
xI = 0.9;
xD = 1.1;
fprintf("la raiz de la funcion es: \n")
try
[r,iteraciones] = biseccion(xI, xD, g, tol, max)
catch e
fprintf("Error: %s\n",e.message)
end

% Ejemplo 2
fprintf ("Ejemplo 2. \n")
h = @(x) x.^3 -10.*x^2 -5;
xI = 0;
xD = 1;
fprintf("la raiz de la funcion es: \n")
try
[r,iteraciones] = biseccion(xI, xD, h, tol, max)
catch e
fprintf("Error: %s\n",e.message)
end