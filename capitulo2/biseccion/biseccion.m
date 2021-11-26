% Parámetros de entrada y salida
% r: Raíz encontrada 
% iteraciones: el numero de iteraciones necesarias para la solucion 
% xI: Intervalo izquierdo 
% xD: Intervalo derecho 
% f: Función que se evaluará
% tol: Error de tolerancia 
% max: Iterasiones máximas
function [r, iteraciones] = biseccion(xI, xD, f, tol, max)
 %Condiciones
if f(xI) == 0 || f(xD) == 0  % Si alguno de los intervalos ingresados cumple la ecuacion, automaticamente tenemos la raiz
    if f(xI) == 0
        r = xI;
    else
        r = xD;
    end
    
else
    if f(xI) * f(xD) < 0 % Condición que asegura si existe raíz en el intervalo
        xM = (xI + xD) / 2; % Valor medio de intervalo
        contador = 0; % Contador de iteraciones
        while abs(f(xM)) > tol && contador < max %Bucle, para que cumpla con el numero de iteraciones, y con el error de toleracia para un mejor resultado
            xM = (xI + xD) / 2; % Valor medio de intervalo para siguientes iteraciones
            if f(xM) == 0
                r = xM;  % Si el valor medio cumple con la ecuacion, se guarda la raiz
            else
                if f(xI) * f(xM) < 0 % Evalua si la raíz está a la izquiera o derecha del punto medio
                    xD = xM; % Si está a la izquierda, el punto medio pasa a ser el intervalo derecho
                else
                    xI = xM; % Si está a la derecha, el punto medio pasa a ser el intervalo izquierdo
                end
            end
            contador = contador + 1; % Suma el número de iteraciones
        end
        iteraciones= contador;
        r = xM;  % Guardamos el numero de iteraciones y el valor de la raiz 
    else % Si el intervalo no contiene la raíz, mandamos el mensaje de error
        error("No existe la raiz.\n");
    end
end