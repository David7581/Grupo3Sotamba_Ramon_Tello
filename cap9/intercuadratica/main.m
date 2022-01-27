% Metodo de busqueda de interpolacion cuadratica
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 9/1/2021

%Problema 1
% Aplicar el metodo de interpolacion cuadratica para minimizar la siguiente
% funcion e−2x + x2 en el intervalo [-1,1]
clc
try
    x0=-1;
    x2=1; 
    fun= @(x) exp(x^2) + 2*x^2*exp(-x);
    maxiter=100;
    epsilon= 0.001;
    [xm,fxm] = intercuadratica(x0,x2,fun,maxiter,epsilon);
    fprintf('Problema 1\n')
    fprintf('Punto minimo : %f \n',xm)
    fprintf('Valor minimo de la funcion : %f \n',fxm)
catch e
  fprintf("Error: %s\n", e.message);
end

%Problema 2
% Aplicar el metodo de interpolacion cuadratica para minimizar la siguiente
% funcion e−2x + x2 en el intervalo [-1,1]
try
    x0=-1;
    x2=1; 
    fun= @(x) exp(-2*x) + x^2;
    maxiter=100;
    epsilon=0.001;
    [xm,fxm] = intercuadratica(x0,x2,fun,maxiter,epsilon);
    fprintf('Problema 2\n')
    fprintf('Punto minimo : %f \n',xm)
    fprintf('Valor minimo de la funcion : %f \n',fxm)
catch e
  fprintf("Error: %s\n", e.message);
end

