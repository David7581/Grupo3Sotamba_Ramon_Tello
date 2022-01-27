% Autores
% Jonnathan Ramon, David Tello

clc
X=[6 9 11 13 22 26 28 33 35];
Y=[68 67 65 53 44 40 37 34 32];
m = 4;
fprintf('Regresion Polinomial')
try 
[Px] = regresionpolinomial(X,Y,m)
h = figure(1);
scatter(X,Y); % crea marcadores circulares en las ubicaciones especificadas por los vectores
title('Ejemplo 1');
hold on 
grid on; 
xlabel('X'); ylabel('Y');
ezplot(Px,[X(1,1)-1,X(1,5)+1]) % Graficar la funcion simbolica

catch e
    fprintf("Error: %s\n",e.message)
end
fprintf('Regresion Polinomial')
fprintf ("\nEjemplo 2. \n")
X=[1 2 3 4 5 6 7 ];
Y=[3.04 3.05 3.12 3.57 7.82 8.68 9.71];
m = 4;
try 
[Px] = regresionpolinomial(X,Y,m)
h = figure(2);

fprintf('Regresion Polinomial')
scatter(X,Y); % crea marcadores circulares en las ubicaciones especificadas por los vectores
title('Ejemplo 2');
hold on 
grid on; 
xlabel('X'); ylabel('Y');
ezplot(Px,[X(1,1)-1,X(1,5)+1]) % Graficar la funcion simbolica

catch e
    fprintf("Error: %s\n",e.message)
end


