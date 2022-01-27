% Metodo de diferencias finitas para ecuaciones de laplace
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 22/12/2021
clc
ua=60;
ub=60;
uc=50;
ud=70;
n=10;
m=10;
maxiter=100;
error=0.01;
try
[y] = laplace(ua, ub, uc, ud, n, m, maxiter, error);   
catch e
    fprintf("Error: %s\n", e.message);
end
