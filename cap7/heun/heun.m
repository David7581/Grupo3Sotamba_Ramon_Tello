% Método de heun 
% Autores
% Jonathan Ramon David Tello
% Fecha de implementacion: 19/12/2021
% Parámetros de entrada
% f: funcion a evaluar
% x0: punto inicial de x
% y0: punto inicial de y
% h: tamano de paso
% xf: punto final de x
% E: solucion exacta
% Tamano del vector T
% Parámetros de salida
% Y: Solucion aproximada
% exacta: solucion exacta
% error 

function [Y,exacta,error]= heun(f,x0,xf,h,y0,E,n)
syms y t
T=[x0:h:xf] % Creacion de matriz con valores de x
Y(1)=y0% Creacion de matriz con valores de x
for i = 1:n
 % aplicacion del metodo
 k1=subs(f,{t,y},{T(i), Y(i)}); 
 k2=subs(f,{t,y},{T(i)+((2/3)*h), Y(i)+((2/3)*h)*k1});
 Y(i+1)=Y(i)+(h/4)*(k1+3*k2);
 exacta=subs(E,T(i+1));
 error=abs(exacta-Y(i+1));
end
end