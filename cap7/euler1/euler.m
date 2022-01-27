% Funcion para el metodo de Euler
% Autores: Jonnathan Ramón-David Tello
% Fecha de implementacion: 12/12/2021
% PARAMETROS DE ENTRADA
% x: Valor inicial de variable independiente
% y: Valor inicial de variable dependiente
% xf: Valor final de variable dependiente
% h: Valor de paso
% n: Numero de iteraciones
% f: función en la que se aplicara el método de euler 
% PARAMETROS DE SALIDA
% X: Valores de x 
% Y: Valores de y 
function [X,Y] = euler(f,x,y,h,n,xf)
X = x:h:xf; % Creacion de matriz con valores de x
Y=[y];
% Metodo de Euler
for i=1:n
    y1=feval(f,x);
    hy1=h*y1; 
    y=y+hy1;
    Y(i+1)=[y];
    x=x+h;
end

end

