% Main del metodo de simpson 
% Autores: Jonnathan Ramón, Javier Sotamba, David Tello
% Fecha de implementacion: 02/12/2021

% PARAMETROS DE ENTRADA
% f: Función a integrar.
% a: Limite inferior de la integral.
% b: Limite superior de la integral.
% max: Máximo de iteraciones.
% PARAMETROS DE SALIDA
% s: Resultado aproximado de la integral.

fprintf("METODO DE Gauss Legendre. \n")
%EJEMPLO1
fprintf("EJEMPLO1 \n")
syms x;
g=0.2+25*x-200*x.^2+675*x.^3-900*x.^4+400*x.^5;
a=0;
b=0.8;
try 
s = gausslegendretres(g, a, b)
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica
h=figure(1); 
x2= a:0.01:b;  
y2=  double(subs(g,x2));
grid on; 
plot(x2,y2,'-r');

%EJEMPLO2
fprintf("EJEMPLO2\n")
syms x;
g=0.2+25*x-200*x.^2+675*x.^3-900*x.^4+400*x.^5;
a=0;
b=0.8;
try 
rone = gausslegendretres(g, a, b)
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica
h=figure(1); 
x2= a:0.01:b;  
y2=  double(subs(g,x2));
grid on; 
plot(x2,y2,'-r');