% La siguiente funcion realiza el metodo de punto fijo 
% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Parámetros 
% xr = raiz encontrada
% k = numero de iteraciones
% f = funcion
% x0 = valor inicial
% tol = tolerancia
% itermax = maximo de iteraciones
% ea = error absoluto

function [xr, k] = puntofijo(f, x0, tol, itermax)
for k = 1:itermax
    xr = f(x0);
    ea = abs((xr-x0)/xr)*100;
    if ((ea<=tol) || (k >= itermax)) %Si el error es menor a la tolerancia o Si las iteraciones 
                                     % llegan a las iteraciones maximas salir del bucle
        break;
    else
        x0 = xr;
    end
end
  