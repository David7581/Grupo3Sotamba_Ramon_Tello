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


function [xr,iter,ea] = puntofijo(x0, es, imax, gx)
xr = x0;
iter = 0;
do = 0;
while (do== 0)
    xrold = xr;
    xr = gx(xrold); %evaluar punto en la funcion
    iter = iter + 1;% actualizar numero de iteraciones
    if (xr ~= 0) %Calcular el error absoluto mientras xr sea diferente de 0
        ea = abs((xr-xrold)/xr)*100;
    end
    if ((ea < es) || (iter >= imax))
        break;
    end
    
end   
  