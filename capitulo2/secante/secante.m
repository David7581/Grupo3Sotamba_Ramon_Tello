%Metodo de la Secante 
% Autores: Jonnathan Ramon, David Tello, Javier Sotamba
% Fecha: 14/10/21
% Descripci�n: Funcion Secante, para hallar las raices de una ecuacion 
% Par�metros de entrada y salida
% r: Ra�z encontrada por el m�todo
% iteraciones: Numero de iteraciones que se realizan para hallar la raiz
% x1: Intervalo izquierdo donde se evaluar�
% x2: Intervalo derecho donde se evaluar�
% f: Funci�n que se evaluar�
% tol: Error de tolerancia 
% max: Iteraciones m�ximas

function [r,iteraciones] = secante(xI,xD,f,tol,max)

er = 1;% inicializamos un error que despues cambiara al evaluar la funcion
n = 0; % contador de iteracciones
xn = 0; % variable de iniciacion
if f(xD)*f(xI) < 0  % Condici�n que asegura si existe ra�z en el intervalo
    while er > tol && n < max
      % Si la funci�n evaluada con valor medio es mayor a la
        % tolerancia y a�n nose ha llegado a las m�ximas iteraciones el bucle termina
        xn = xD - ((xI-xD)/(f(xI)-f(xD)))*f(xD); 
        xD=xI; % actualizamos los intervalos 
        xI=xn; % actualizamos los intervalos 
        er=abs(f(xn)); % calulamos el error
        n=n+1; % actualizamos contador
    end
    iteraciones= n;
    r= xn;
else % Si el intervalo no contiene la ra�z, se proceder� con un mensaje de error
    error("No se puede garantizar que exista una soluci�n en el intervalo establecido. \n")
end