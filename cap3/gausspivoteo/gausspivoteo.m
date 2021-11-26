% Funcion para resolver un sistema lineal de ecuaciones
% mediante el metodo de gauss con pivotacion
%
% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Parámetros de entrada
% A= matriz con los valores de la incognitas del sistema
% b= matriz de coeficientes
% Parametros de salida
% A= Matriz triangular superior
% b= vector b reducido

function [A,b]= gausspivoteo(A,b)
  [n,q]=size(A);
  for j= 1:n-1; % recorre los pivotes de la matriz
    al= abs(A(j,j)); m=j;% eleccion fila con mayor pivote
    for k=j+1:n;% recorrer todos los elementos debajo del pivote pero en la misma columna
      if abs(A(k,j))> al % comparar si el valor del pivote es mayor 
        al = abs(A(k,j)); m=k; %actualizar el pivote
      end
    end
    
    for l=j:n %intercambio de filas
      be=A(j,l);
      A(j,l)=A(m,l);
      A(m,l)=be;
    end
    be=b(j); b(j)=b(m); b(m)=be;
    
    % algoritmo central
    for k = j+1:n; % ir haciendo 0 bajo el pivote
      al= -A(k,j)/A(j,j); % calcular factor por el que vamos a multiplicar la fila
      for m = j:n; 
        A(k,m)=A(k,m)+al*A(j,m);% se actualiza el valor de la fila  
      end
      b(k) = b(k)+al*b(j); 
    end
  end
end
