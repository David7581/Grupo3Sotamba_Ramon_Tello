clc
tol=10^-5;
max=100;
syms x;
fprintf("Metodo newton raphson para ecuaciones no lineales. \n")
%Ejemplo 1
fprintf ("  Ejemplo 1. \n")
xa= 1;
ec= @(x) -0.001*x^2 -0.42*x + 3.07;
dev= @(x) -0.002*x -0.42;
try
tic
[y,iteraciones]= newton(ec,xa,max,tol,dev);
toc
fprintf('La raiz de la funcion es y=%d, el numero de iteraciones es %d',y,iteraciones);
catch e
fprintf("Error: %s\n",e.message)
end

%