% Interpolación de Lagrange 
% Jonathan Ramon, David Tello
% Fecha de implementación: 15 de noviembre de 2021

clc;
fprintf("Interpolacion de Lagrange. \n ")
%ejemplo_1
x=[6 9 11 13 22 26 28 33 35];
y=[68 67 65 53 44 40 37 34 32];
xo=2;
try
[polinomio] = polinomio_lagrange(x,y,xo)
catch e
fprintf("Error: %s\n",e.message)
end

h = figure(1); 
plot(x,y,'bo') % Datos iniciales, grafica 
xlabel('Datos X'); 
ylabel('Datos Y');
title('Interpolación de Lagrange')
hold on;
grid on;
minimo=min(x);
maximo=max(x);
z=linspace(minimo, maximo, 100);
y=double(subs(polinomio, z)); % Evalua los valores en la función simbolica, transforma valores simbolicos a flotantes 
plot(z, y,'.g') % Grafica de polinomio 
plot(xo, ys, 'ro') % Grafica de valor aproximado  


% ejemplo 2
x=[1 2 3 4 5 6 7 ];
y=[3.04 3.05 3.12 3.57 7.82 8.68 9.71];
xo=4;
fprintf("Interpolacion de Lagrange. \n ")
try
[polinomio] = polinomio_lagrange(x,y,xo)
catch e
fprintf("Error: %s\n",e.message)
end
h = figure(2);
plot(x,y,'bo') % Datos iniciales
xlabel('Datos X'); 
ylabel('Datos Y');
title('Interpolación de Lagrange')
hold on;
grid on;
minimo=min(x);
maximo=max(x);
z=linspace(minimo, maximo, 100);
y=double(subs(polinomio, z)); % Evalua los valores en la función simbolica, transforma valores simbolicos a flotantes 
plot(z, y,'.g'); % Grafica de polinomio  
plot(xo, ys, 'ro') % Grafica de valor aproximado 


