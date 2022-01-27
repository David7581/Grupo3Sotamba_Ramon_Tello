% Main metodo del trapecio 
% Autores
% David Tello, Jonnathan Ramón 
% Fecha de implementacion: 2/12/2021
% Parametros de entrada
% g: funcion en la que se aplicara la regla del trapecio 
% a: limite inferior de la integral
% b: limite superior de la integral
% n: cantidad de trapecios a utilizar

% Parametros de salida 
% r: aproximación al resultado real

clc
fprintf("Regla del trapecio. \n ")
syms x;
% ejemplo 1
fprintf ("\nEjemplo 1:\n")
try
f =(1/6)*x +25;
a=0; b=36; n=10;
r = trapecio(f,a,b,n);
fprintf('integral aproximada: %f',r);
catch e
fprintf("Error: %s\n",e.message)
end
%grafica
h=figure(1); 
x1 = linspace(a,b,n);
x2= a:0.01:b;  
y1 = double(subs(f,x1));
y2=  double(subs(f,x2));
bar(x1,y1,'m')
hold on;
grid on; 
plot(x2,y2,'-r');

% ejemplo 2
fprintf ("\nEjemplo 2:\n")
try
f = 5.38*x+4.138 ;
a=0; b=0.1; n=10;
r = trapecio(f,a,b,n);
fprintf('integral aproximada: %f',r)
catch e
fprintf("Error: %s\n",e.message)
end
%grafica
h=figure(2); 
x1 = linspace(a,b,n);
x2= a:0.01:b;  
y1 = double(subs(f,x1));
y2=  double(subs(f,x2));
bar(x1,y1,'m')
hold on;
grid on; 
plot(x2,y2,'-r');

