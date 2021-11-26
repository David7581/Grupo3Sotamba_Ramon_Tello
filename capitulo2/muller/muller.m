% La siguiente funcion realiza el metodo de punto fijo 
% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Parámetros de entrada
% fx = ecuacion
% imax = numero maximo de iteraciones
% xr = punto inicial
% Parametros de salida
%xr= raiz
%iter= numero de iteraciones
%e= error
function [xr,iter,e] = muller(xr,h,e,imax,fx)
x2 = xr;
x1 = xr + h*xr;
x0 = xr - h*xr;
iter = 0;
f = fx;
while iter < imax
    iter = iter + 1;
    % Formulas
    h0 = x1 - x0;
    h1 = x2 - x1;
    d0 = (f(x1) - f(x0))/h0; 
    d1 = (f(x2) - f(x1))/h1;
    % Calculo de los coeficientes
    a = (d1 - d0)/(h1 + h0);
    b = a*h1 + d1;
    c = f(x2);
    rad = sqrt(b*b - 4*a*c);
    if abs(b+rad) > abs(b-rad)
        den = b + rad;
    else
        den = b - rad;
    end
    dxr = -2*c/den;
    xr = x2 + dxr;
    if abs(dxr) < e*xr
        break;
    end
    x0 = x1;
    x1 = x2;
    x2 = xr;
end