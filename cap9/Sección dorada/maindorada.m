% Main para el metodo de la seccion dorada
% Autores: Jonnathan Ramón-David Tello
% Fecha: 07/01/2022

% PARAMETROS DE ENTRADA:
% f: Funcion a evaluar
% a: Punto inicial 
% b: Punto final 
% iter: Numero maximo de iteraciones
% error: Error de tolerancia
% g: Numero de grafica

% PARAMETROS DE SALIDA:
% x_min,fx_min: Par ordenado min   

clear,clc 

%EJEMPLO 1
f=inline('1.825^(-x)+x^2'); 
a=-5;
b=5;  
iter=50;
error=0.000001; 
try
fprintf("EJEMPLO1")
secdor(f,a,b,iter,error,1)    
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica 1
figure(1)
x= a:0.1:b;
y=1.825.^(-x)+x.^2;
plot(x,y)
hold on


%EJEMPLO 2
f=inline('(x-2)^2-6');
a=-3;
b=6;  
iter=100;
error=0.01; 
try
fprintf("EJEMPLO2")
secdor(f,a,b,iter,error,2)    
catch e
fprintf("Error: %s\n",e.message)
end
%Grafica 2
figure(2)
x= a:0.1:b;
y=(x-2).^2-6.;
plot(x,y)
hold on





