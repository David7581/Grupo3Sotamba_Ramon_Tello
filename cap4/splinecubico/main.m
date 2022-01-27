% Autores
% Javier Sotamba, Jonnathan Ramon, David Tello
% %Problema 1
fprintf ("Interpolacion spline cubico\n")
fprintf ("Ejemplo 1.")
x1=[6 9 11 13 22 26 28 33 35];
y1=[68 67 65 53 44 40 37 34 32];
clc
try 
[a,b,c,d,y] = spline(x1,y1)
h = figure(1);
title('Ejemplo 1'); 
grid on; 
scatter(x1,y1);
hold on;
catch e
    fprintf("Error: %s\n",e.message)
end

fprintf ("Interpolacion spline cubico\n")
fprintf ("Ejemplo 2. ")
x1=[1 2 3 4 5 6 7 ];
y1=[3.04 3.05 3.12 3.57 7.82 8.68 9.71];
try 
[a,b,c,d,y] = spline(x1,y1)
h = figure(2);
title('Ejemplo 2');
hold on 
grid on; 
scatter(x1,y1);

catch e
    fprintf("Error: %s\n",e.message)
end
