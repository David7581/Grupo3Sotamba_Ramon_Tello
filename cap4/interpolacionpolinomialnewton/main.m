%Interpolacion de Newton
% Autores: Jonnathan Ramón, David Tello
% Fecha de implementacion: 12/11/21
% Parametros de entrada y salida
% x: vector de coeficientes
% y: vector de coeficientes
% xi: valor que se quiere interpolar
% yi: dato interpolado
% polinomio: el polinomio con diferencias
%Problema 1
clc
fprintf("Interpolacion polinomial de Newton. \n ")
fprintf ("Ejemplo 1. \n")
x=[6 9 11 13 22 26 28 33 35];
y=[68 67 65 53 44 40 37 34 32];
xi=6;
try
[Px] = interpolacionnewton(x,y,xi)
h = figure(1);
plot(x,y,'dk'); 
title('Ejemplo 1');
hold on;
grid on; 
xlabel('X'); ylabel('Y');
ezplot(Px,[x(1,1)-1,x(1,5)+1]) % Graficar la funcion simbolica
catch e
fprintf("Error: %s\n",e.message)
end


%Problema 2
fprintf("Interpolacion polinomial de Newton. \n ")
fprintf ("Ejemplo 2. \n")
x=[1 2 3 4 5 6 7 ];
y=[3.04 3.05 3.12 3.57 7.82 8.68 9.71];
xi=7;
try
[Px] = interpolacionnewton(x,y,xi)
h = figure(2);
plot(x,y,'dk'); 
title('Ejemplo 1');
hold on;
grid on; 
xlabel('X'); ylabel('Y');
ezplot(Px,[x(1,1)-1,x(1,5)+1]) % Graficar la funcion simbolica
catch e
fprintf("Error: %s\n",e.message)
end