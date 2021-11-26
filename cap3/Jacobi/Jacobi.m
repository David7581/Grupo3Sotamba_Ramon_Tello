% Funcion para resolver un sistema lineal de ecuaciones
% mediante el metodo de Jacobi
%
% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Fecha de implementacion: 4/11/2021
% Parametros 
% A: matriz de coeficientes
% b: vector de terminos independientes
% x0: vector inicial 
% tol: tolerancia del resultado
% max: numero maximo de iteraciones
% x: el vector de solucion
% er: error relativo cometido
% it: el numero de iteraciones que se han realizado


function [x]= Jacobi(A,b,x0,tol,max)
[A1,A2]= size(A);
[b1,b2] = size(b);

if A2 == b1
  n = length(b);
  x0=zeros(n,1); % inicializar la variable x0
  er=100;% declarar el error
  D=diag(diag(A));% obtener la matriz diagonal
  D1=inv(D);% obtener la inversa de la matriz
  I=-tril(A,-1); % obtener la matriz triangular inferior
  F=-triu(A,+1);% obtener la matriz triangular superior

  it=0; % inicializar la iteraciones
  while it<max && er >tol %bucle para resolver el sistema lineal
    it=it+1;% aumentar la iteracion
    x=D1*(I+F)*x0+D1*b; % aplicar el metodo
    res= norm(A*x - b);
    er= res/norm(b);%calcular el error 
    x0=x;% actualizar el resultado
  end
else
  error ("Las dimensiones de las matrices no son iguales. \n")
end


