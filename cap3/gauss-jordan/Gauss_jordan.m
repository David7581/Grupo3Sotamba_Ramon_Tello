% Funcion para Metodo de Gauss Jordan 
% Autores: Jonnathan Ramon, David Tello, Javier Sotamba
% Fecha: 28/10/21
% Descripción: Funcion Gauss Jordan, para hallar las soluciones de una matriz
% Parametros de entrada y salida 
% a: matriz ampliada con los valores de las incognitas y los coeficientes independientes
% Parametros de salida
% Matriz identidad
% solucion = Matriz con los nuevos terminos independientes

function[X] = Gauss_jordan(A,b)
[n n] =size(A);
A=[A';b']';
X=zeros(n,1);
for p=1:n
    for k=[1:p-1,p+1:n]
        if A(p,p)==0
            break
        end
        mult = A(k,p)/A(p,p);
        A(k,:) = A(k,:) - mult*A(p,:);
        
    end

end
X=A(:,n+1)./diag(A);
X=X';