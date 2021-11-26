%Metodo de la Secante 
% Autores: Jonnathan Ramon, David Tello, Javier Sotamba
% Fecha: 14/10/21
% Descripción: Funcion Secante, para hallar las raices de una ecuacion 
% Parámetros de entrada y salida
% r: Raíz encontrada por el método
% iteraciones: Numero de iteraciones que se realizan para hallar la raiz
% x1: Intervalo izquierdo donde se evaluará
% x2: Intervalo derecho donde se evaluará
% f: Función que se evaluará
% tol: Error de tolerancia 
% max: Iteraciones máximas

function [r,iteraciones] = secante(xI,xD,f,tol,max)

er = 1;% inicializamos un error que despues cambiara al evaluar la funcion
n = 0; % contador de iteracciones
xn = 0; % variable de iniciacion
if f(xD)*f(xI) < 0  % Condición que asegura si existe raíz en el intervalo
    while er > tol && n < max
      % Si la función evaluada con valor medio es mayor a la
        % tolerancia y aún nose ha llegado a las máximas iteraciones el bucle termina
        xn = xD - ((xI-xD)/(f(xI)-f(xD)))*f(xD); 
        xD=xI; % actualizamos los intervalos 
        xI=xn; % actualizamos los intervalos 
        er=abs(f(xn)); % calulamos el error
        n=n+1; % actualizamos contador
    end
    iteraciones= n;
    r= xn;
else % Si el intervalo no contiene la raíz, se procederá con un mensaje de error
    error("No se puede garantizar que exista una solución en el intervalo establecido. \n")
end