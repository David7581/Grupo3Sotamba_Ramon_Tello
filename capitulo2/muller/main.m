% Autores: David Tello, Jonathan Ramon, Javier Sotamba
% Problema
% 
clc
syms x;
xr = 4.5;
h = 0.2;
e = 0.1;
imax = 1000;
fx = @(x) x^3-13*x-12;
try 
    fprintf("Metodo de muller para ecuaciones no lineales. \n")
    fprintf('Ejmeplo1:\n');
    tic
    [xr,iter,e] = muller(xr,h,e,imax,fx);
    tiempo=toc;
    fprintf('El tiempo de ejecucion es: %d\n ',tiempo);
    fprintf('La raiz es: %d Numero de iteraciones: %d ',xr,iter);

catch e
  fprintf('Error: %s\n',e.message);
end