% La siguiente funcion realiza la regresion polinomial
% Autores
% Javier Sotamba, Jonnathan Ramon, David Tello
% Fecha de implementacion: 10/11/2021
% Parametros de entrada
% x: vector de coeficientes
% y: vector de coeficientes
% m: grado del polinomio 
% parametros de salida
% Px: ecuacion del polinomio

function [Px] = regresionpolinomial(X, Y, m)

n = length(X);  % tamaño del vector

if n >= m + 1  % si el numero de elementos del vector es mayor al grado del polinomio mas uno continuar con el proceso.
    b=zeros(n); % crear una matriz de ceros
    b(:,1)=X(:).^0; % igualar la primera columna a x^0 
    % Calculo de los coeficientes an para generar el polinomio
    for j = 2:n
        b(:,j)=X(:).^(j-1);
    end
    a=b; %Matriz de coeficientes
    c=a^-1; % Inversa de la matriz de coeficietes
    A=c*Y'; % Solucion del sistema de ecuaciones
   
    % Construccion de la ecuacion polinomial 
    syms("y");
    syms("x");
    B=A'; % Transpuesta del sistema de ecuaciones
    XX(1,1)=x^0;
    for i=2:n
        XX(1,i)=x.^(i-1); %Elevar cada termino de x a la ^(i-1)
    end
    ZZ=XX; 
    P=(B.*ZZ);
    Px=(sum(P));
else
   error("El grado es mayor al numero de datos") 
end
