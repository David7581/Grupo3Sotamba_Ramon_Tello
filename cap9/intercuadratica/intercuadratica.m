% Metodo de de busqueda de interpolacion cuadratica
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 9/1/2021
% Parametros de entrada
% x0, x2 : Puntos iniciales
% maxiter :  numero maximo de iteraciones a realizar
% fun : funcion
% epsilon : valor de tolerancia
% Parametros de salida
% xm : Punto minimo
% fxm : valor minimo de la funcion
function [xm,fxm] = intercuadratica(x0,x2,fun,maxiter,epsilon)
x1 = 0.5*(x0 + x2); % Valor medio entre x0 y x2

f1 = fun(x0);
f2 = fun(x1);
f3 = fun(x2);
z1 = (x1 - x2)*f1;
z2 = (x2 - x0)*f2;
z3 = (x0 - x1)*f3;
z4 = (x1 + x2)*z1+(x2 + x0)*z2+(x0 + x1)*z3;
x3 = z4/(2*(z1 + z2 + z3));
ea=100;
for k=0:maxiter % Numero maximo de iteraciones a realizar
    %Aplicar metodo de busqueda de interpolacion cuadratica
    if x3>x1 && x3>x2
        ea=abs((x3-x2)/x3)*100;
        x2=x3;
    end
    if x3>x0 && x3<x1 && x3>x2
        ea=abs((x3-x0)/x3)*100;
        x0=x3;
    end 
    if x3<x0 && x3<x1 && x3>x2
        ea=abs((x3-x2)/x3)*100;
        x2=x1;
        x1=x0;
        x0=x3;
    end 
    if x3>x0 && x3>x1 && x3>x2
        ea=abs((x3-x2)/x3)*100;
        x0=x1;
        x1=x2;
        x2=x3;
    end
    if ea<epsilon
        break
    end
xm=x3;
fxm=fun(x3);
end

