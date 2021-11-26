% Metodo de Gauss
% Autores: Jonnathan Ramon, Javier Sotamba, David Tello
% Fecha de implementacion: 21/10/2021
% Funcion Gauss, para realizar el metodo numerico de gauss 
% Parametros de entrada y salida
% a: matriz cuadrada de orden n
% b: matriz rectangular de orden nx1
% X: solucion 

function [X] = gauss(A,B)
  [A1,A2]= size(A);
  [b1,b2]=size(B);
  n = length(B);
  A=[A,B];
  if A2 == b1
      %Eliminacion hacia adelante
      for j=1:n-1
          for i=j+1:n
              A(i,:)=A(i,:)+A(j,:)*(-A(i,j)/A(j,j));
          end
      end
      %Sustitucion hacia atras
      for i=n:-1:1
          X(i) = A(i,n+1);
          for j=i+1:n
              X(i) = X(i) - X(j)*A(i,j);
          end
          X(i) = X(i)/A(i,i);
      end
  else
    error("No se puede resolver. Las matrices deben ser de igual tamaño")
  end
end