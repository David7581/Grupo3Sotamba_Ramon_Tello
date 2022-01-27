% La siguiente funcion realiza la Linealización de relaciones no lineales
% se a usado para ello el modelo la ecuacion exponencial, ecuacion de
% potencia y la ecuacion de razon de crecimiento
% Autores
% Jonathan Ramon, David Tello
% Parametros de entrada
% X: vector de coeficientes
% Y: vector de coeficientes

% Parametros de salida
% ys1: ecuacion simbolica para el modelo exponencial
% ys2: ecuacion simbolica para el modelo de potencia
% ys3: ecuacion simbolica para el modelo de razon de crecimiento
% ecuacion1: ecuacion evaluada para el modelo exponencial
% ecuacion2: ecuacion evaluada para el modelo de potencia
% ecuacion3: ecuacion evaluada para el modelo de razon de crecimiento

function [ys1,ys2,ys3,ecuacion1,ecuacion2,ecuacion3] = linealizacion(X,Y)
contador = 1; % contador de iteraciones
m = length(Y);    % tamaño del vector
n = length(X);    % tamaño del vector

if n == m 
    
while contador <= 3
%inicializacion de variables que funcionan como contadores
x=0; y=0; x2=0; y2=0; mult=0;

%bucle para recorrer los vectores X e Y posicion por posicion
for i=1:n
    % calculo de las variables que almacenan el valor de X(i)-Y(i) en ese momento
    if contador == 1
        aux1=X(i); aux2=log(Y(i));
    elseif contador == 2
        aux1=log10(X(i)); aux2=log10(Y(i));
    elseif contador == 3
        aux1=1/(X(i)); aux2=1/(Y(i));
    end
    x=x+aux1; y=y+aux2; %contador de las xi-yi
    x2=x2+aux1^2; y2=y2+aux2^2; %contador de xi^2-yi^2
    mult=mult+aux1*aux2; %contador de xi*yi
end

x_prom=x/n; y_prom=y/n; %promedio de los valores x-y
a1=(n*mult-x*y)/(n*x2-x^2); %calculo del coeficiente a1
a0=y_prom-a1*x_prom; %calculo del coeficiente a0 que corresponde al termino independiente
C=[a1 a0]; %calculo del coeficiente a1 que corresponde al coeficiente de la variable x
al1=exp(C(2)); %coeficiente del exponente la ecuacion1
b1=C(1); %coeficiente de la potencia del exponente de la ecuacion1
a2=10^C(2);%coeficiente de x la ecuacion2
b2=C(1);%exponente de x de la ecuacion2
a3=1/C(2);%constante que multiplica a x del numerador de la ecuacion3
b3=a3*C(1);%constate que suma a x en el denominador de la ecuacion3

syms('x');syms('y');
if contador == 1
    ecuacion1 = (b1*X)+log(al1);
    ys1=(b1*x)+log(al1);
elseif contador == 2
    ecuacion2 = (b2*X)+ log10(a2);
    ys2=(b2*x)+ log10(a2);
elseif contador == 3
    ecuacion3 = (b3/a3)*X + (1/a3);
    ys3=(b3/a3)*x + (1/a3);
end
contador = contador +1;  %actualizacion de las iteraciones
end
else
   error("Las matrices deben tener el mismo tamaño") 
end

end

