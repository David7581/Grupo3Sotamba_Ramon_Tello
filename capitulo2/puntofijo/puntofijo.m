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


function [xr,i] = punto_fijo(f,x0,tol,itermax)
er = 1; % inicializamos un error que despues cambiara al evaluar la funcion
i =0; %Contador de iteraciones
while er > tol && i <= itermax
    % Mientras las iteraciones no lleguen al máximo y el error sea mayor
    % que la tolerancia, el método continuará
    xr = x0; % actualizacion del valor donde evaluamos
    x0 = f(xr);  % calculo de la aproximacion
    i = i + 1;  % actualizamos contador
    er = abs(x0-xr);  % Calculamos el error
end
if i > itermax
  error ("Se ha superado el numero maximo de iteraciones. \n")
end   
end   
  