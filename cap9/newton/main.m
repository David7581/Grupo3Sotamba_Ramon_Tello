%Metodo de Newton
% Autores: Jonnathan Ramón-David Tello
clc
%Ejemplo 1
% Aplicar el metodo de newton para minimizar la siguiente funcion
% fx=xˆ2+2*yˆ2-4*x-2*x*y, con punto inicial de [1,3]
try
   syms x y;
   fun= x^2 + 2*y^2 - 4*x - 2*x*y;
   x0=[1 3];
   maxiter=100;
   tol=0.001;
   [x0,fx,iter,gradiente]=newton(x0,fun,maxiter,tol);
   fprintf('Problema 1\n')
   fprintf('Numero de iteraciones : %d \n',iter)
   fprintf('Punto minimo : %f \n',x0)
   fprintf('Valor minimo de la funcion : %f \n',fx)
   fprintf('Gradiente : %f \n',gradiente)
   
catch e
  fprintf("Error: %s\n", e.message);
end

%Ejemplo 2
% Aplicar el metodo de newton para minimizar la siguiente funcion
% fx=x^2 + 2*y^2 - 3*x - 2*x^2, con punto inicial de [1,-7]
try
   syms x y ;
   fun= x^2 + 2*y^2 - 3*x - 2*x^2 ;
   x0=[1 -7];
   maxiter=100;
   tol=0.001;
   [x0,fx,iter,gradiente]=newton(x0,fun,maxiter,tol);
   fprintf('\nProblema 2\n')
   fprintf('Numero de iteraciones : %d \n',iter)
   fprintf('Punto minimo : %f \n',x0)
   fprintf('Valor minimo de la funcion : %f \n',fx)
   fprintf('Gradiente : %f \n',gradiente)
catch e
  fprintf("Error: %s\n", e.message);
end
