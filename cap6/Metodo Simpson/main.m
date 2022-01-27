% Main del metodo de simpson 
% Autores: Jonnathan Ramón, David Tello
% Fecha de implementacion: 02/12/2021

% PARAMETROS DE ENTRADA
% f: Función a integrar.
% li: Limite inferior de la integral.
% ls: Limite superior de la integral.
% max: Máximo de iteraciones.
% PARAMETROS DE SALIDA
% s: Resultado aproximado de la integral.

clc
%EJEMPLO1
fprintf("Metodo de Simpson \n")
fprintf("EJEMPLO1 \n")
f= @(x) 1/6*x +25;
ls=0;
li=36;
max=20;
try
[s]=simpson1_3(f,ls,li,max);
fprintf("METODO DE SIMPSON 1/3\n")
fprintf('integral aproximada: %f',s)
[s]=simpson3_8(f,ls,li,max);
fprintf("\nMETODO DE SIMPSON 3/8\n")
fprintf('integral aproximada: %f',s)
catch e
fprintf("Error: %s\n",e.message)
end
%GRAFICA
figure(1)
title('Ejemplo 1');
hold on; x1 = linspace(li,ls,max); y1 = subs(f,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on; 


%EJEMPLO2
fprintf("\nEJEMPLO2 \n")
f=@(x) 5.38*x+4.138;
ls=0;
li=0.1;
max=20;
try

[s]=simpson1_3(f,ls,li,max);
fprintf("METODO DE SIMPSON 1/3\n")
fprintf('integral aproximada: %f',s)
[s]=simpson3_8(f,ls,li,max);
fprintf("\nMETODO DE SIMPSON 3/8\n")
fprintf('integral aproximada: %f',s)
catch e
fprintf("Error: %s\n",e.message)
end
%GRAFICA
figure(2)
title('Ejemplo 2');
hold on; x1 = linspace(li,ls,max); y1 = subs(f,x1); bar(x1,y1)
xlabel('Eje x'); ylabel('Eje y');
plot(x1,y1,'red','LineWidth',3);grid on; 
