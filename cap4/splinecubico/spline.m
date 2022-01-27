% La siguiente funcion realiza el metodo de regresion polinomial
% Autores
% Javier Sotamba, Jonnathan Ramon, David Tello
% Parametros de entrada
% x1: vector de coeficientes
% y1: vector de coeficientes
% parametros de salida
% y: ecuacion del polinomio
% a,b,c,d: coeficientes de los polinomios cúbicos que interpolan a los datos
function [a,b,c,d,y] = spline(x1,y1)
%Longitud de los vectores
o=length(x1); 
p=length(y1); 
%Condicion para ejecutar el programa
if o==p
    X=[x1;y1]; % unir en una matriz los vectores
    n=length(x1); %longitud de la matriz

for i=1:n;
    a(i)=X(2,i);% fila 2 de la matriz
end

for i=1:n-1;
    h(i)=X(1,i+1)-X(1,i);% coeficiente extremo izquierdo
end

for i=2:n-1; %coeficiente extremo derecho
    alfa(i)=3/h(i)*(a(i+1)-a(i))-3/h(i-1)*(a(i)-a(i-1));
end

%valores iniciales de la matriz
l(1)=1;
mu(1)=0;
z(1)=0;
% Generar matriz tridiagonal
for i=2:n-1;
    l(i)=2*(X(1,i+1)-X(1,i-1))-h(i-1)*mu(i-1);
    mu(i)=h(i)/l(i);
    z(i)=(alfa(i)-h(i-1)*z(i-1))/l(i);
end

%Condicion a los extremos
l(n)=1;
z(n)=0;
c(n)=0;
%Hallar los ultimos coeficientes de polinomio
for i=n-1:-1:1;
    c(i)=z(i)-mu(i)*c(i+1);
    b(i)=(a(i+1)-a(i))/h(i)-h(i)*(c(i+1)+2*c(i))/3;
    d(i)=(c(i+1)-c(i))/(3*h(i));
end

% Construccion de la ecuacion polinomial
syms("x");
for i=1:n-1;
    x=x(i):0.1:x(i+1);
    y=a(i)+b(i)*(x-X(1,i))+c(i)*(x-X(1,i)).^2+d(i)*(x-X(1,i)).^3; %encontrar los valores de y para la gráfica
end

%graficar spline cubico
for i=1:n-1;
    x=X(1,i):0.1:X(1,i+1);% encontrar los valores de x para la grafica
    polinomio=a(i)+b(i)*(x-X(1,i))+c(i)*(x-X(1,i)).^2+d(i)*(x-X(1,i)).^3; %encontrar los valores de y para la gráfica
    hold on
    plot(x,polinomio,'b')%mandar a graficar
end

else
error("Los vectores deben ser del mismo tamanio")
end
 end