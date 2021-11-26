% La siguiente función relaiza el método de Newton-Raphson para encontrar las
% raíces
%Autores
%Javier Sotamba, Jonnathan Ramon, David Tello
% Entradas
% ec: ecuacion
% xa: valor inicial
% max: numero de iteraciones
% tol: error de tolerancia
% Salida 
% r: raiz aproximada 
%

function [y,iteraciones] = newton(ec,xa,max,tol,dev) 
n = 0; % Número de iteraciones

xo=xa;  % El punto anterior sera el punto inicial
er = tol + 1; % Se define el error para que entre al bucle
while n < max && er > tol
    % Mientras las iteraciones no lleguen al máximo y el error sea mayor
    % que la tolerancia, el método continuará
    xs = xo - ec(xo) / dev(xo); % El punto siguiente será la expansión de la serie de Taylor de f
    er = abs(xs - xo); % El error se obtiene con la diferencia de los puntos calculados
    xo = xs; % el punto anterior pasa a ser el siguiente punto a evaluar
    n = n + 1; % Suma el número de iteraciones
end
if n > max
  error ("Se ha superado el numero maximo de iteraciones y no se ha encontrado la raiz. \n") 
end
iteraciones = n;
y = xs; % Se define que la raíz es un punto siguiente o también puede ser el punto anterior
end




 