% Autores
% Javier Sotamba, Jonnathan Ramon, David Tello
clc

x=[6 9 11 13 22 26 28 33 35];
y=[68 67 65 53 44 40 37 34 32];
fprintf('Interpolacion spline cuadratico')
fprintf('\nEjemplo 1')
try 
[fq] = splinecuadratico(x,y)
h = figure(1);
scatter(x,y); % crea marcadores circulares en las ubicaciones especificadas por los vectores
title('Ejemplo 1');
hold on 
grid on; 
xlabel('X'); ylabel('Y');
ezplot(fq,[x(1,1)-1,x(1,5)+1]) % Graficar la funcion simbolica
catch e
    fprintf("Error: %s\n",e.message)
end
fprintf('Interpolacion spline cuadratico')
fprintf ("\nEjemplo 2. ")
x=[1 2 3 4 5 6 7 ];
y=[3.04 3.05 3.12 3.57 7.82 8.68 9.71];
try 
[fq] = splinecuadratico(x,y)
h = figure(2);
scatter(x,y); % crea marcadores circulares en las ubicaciones especificadas por los vectores
title('Ejemplo 2');
hold on 
grid on; 
xlabel('X'); ylabel('Y');
ezplot(fq,[x(1,1)-1,x(1,6)+1]) % Graficar la funcion simbolica
catch e
    fprintf("Error: %s\n",e.message)
end


