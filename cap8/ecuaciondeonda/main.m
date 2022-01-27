% Metodo de diferencias finitas para para la ecuación de onda
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 2/1/2022
clc
l=0.6;
m=4;
n=4;
T=0.5;
g=@(x) sin(4*pi*x);

fprintf('Ejemplo 1\n')
try
[x]=ec_onda(g,l,m,n,T);
catch e
    fprintf("Error: %s\n", e.message);
end

fprintf('Ejemplo 2\n')
l=0.6;
m=4;
n=4;
T=0.5;
g=@(x) cos(3*pi*x);

try
[x]=ec_onda(g,l,m,n,T);
catch e
    fprintf("Error: %s\n", e.message);
end