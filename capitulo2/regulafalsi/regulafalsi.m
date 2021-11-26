% Parámetros de entrada y salida
% a=Limite Inferior
% b=Limite Superior
% x0 = raiz anterior
% fun= funcion
% tol= tolerancia
% iter= numero maximo de iteraciones
% r= raiz de la funcion

function [x1,k] = regulafalsi(fun,a,b,tol,iter)
x0=0;
for k = 1:iter
    fa=fun(a);
    fb=fun(b);
    x1= b-((fb*(b-a))/(fb-fa));
    fx1=fun(x1);
    if fx1*fun(a)>0 % Si esta condicion se cumple, la raiz no esta entre a y b
        a=x1; % El punto medio es el nuevo limite inferior
    else
        b=x1; % El punto medio es el nuevo limite superior
    end
    error=abs(x1-x0);
    if error < tol
        break
    end
    x0=x1;
end
