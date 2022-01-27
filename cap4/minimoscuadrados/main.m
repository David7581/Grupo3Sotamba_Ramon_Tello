% Autores: David Tello, Jonathan Ramon
%
%Problema 1
clc
x=[6 9 11 13 22 26 28 33 35];
y=[68 67 65 53 44 40 37 34 32];
fprintf('Ajuste por minimos cuadrados')
try 
[m,b] = minimoscuadrados(x,y);
h = figure(1);
%Graficar puntos
plot(x,y,'bo')
xlabel('Datos X'); 
ylabel('Datos Y');
title('Minimos Cuadrados 1')
hold on;

%Graficar recta
minimo=min(x);
maximo=max(x);
for x=minimo:0.1:maximo
    y=m*x+b;
    plot(x,y,'.r')
    hold on;
    grid on;
end
fprintf('\nProblema 1')
fprintf('\ny=%f x + (%f)',m,b)

catch e
fprintf("Error: %s\n",e.message)
end
%
%Problema 2
%
x=[1 2 3 4 5 6 7 ];
y=[3.04 3.05 3.12 3.57 7.82 8.68 9.71];
try 
[m,b] = minimoscuadrados(x,y);
h = figure(2);
%Graficar puntos
plot(x,y,'bo')
xlabel('Datos X'); 
ylabel('Datos Y');
title('Minimos Cuadrados 2')
hold on;

%Graficar recta
minimo=min(x);
maximo=max(x);
for x=minimo:0.1:maximo
    y=m*x+b;
    plot(x,y,'.r')
    hold on;
    grid on;
end
fprintf('\nAjuste por minimos cuadrados')
fprintf('\nProblema 2 ')
fprintf('\ny=%f x + (%f)',m,b)
catch e
fprintf("Error: %s\n",e.message)
end



