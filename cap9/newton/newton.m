% Metodo de Newton
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 13/1/2021
% Parametros de entrada
% x0: punto inicial
% fun : funcion
% maxiter : numero maximo de iteraciones
% tol : valor de tolerancia
% Parametros de salida
% x0 : Punto minimo
% fx : valor minimo de la funcion
% iter : numero de iteraciones realizadas
% gradiente
function [x0,fx,iter,gradiente]=newton(x0,fun,maxiter,tol)
%Convertir en una funcion de linea y definir x1,x2 para evaluar el punto inicial
fx= inline(fun); 
fobj= @(x) fx(x(:,1),x(:,2));

grad= gradient(fun);%Encontrar el gradiente de la funcion
G=inline(grad);%Convertimos en una funcion linea 
gradx= @(x) G(x(:,1),x(:,2)); %Definir x y

H1= hessian(fun); %Calcular la matriz Hessian
Hx= inline(H1); %Convertimos en una funcion linea

iter=0; 
X=[];
while norm(gradx(x0))>tol %Ejecutar bucle hasta que el gradiente tienda a 0 
    if iter<maxiter 
    X=[X;x0];% Matriz de los puntos calculados
    grad = -gradx(x0); %Calcular gradiente en x0
    H = Hx(x0); %Calcular matriz Hessian en x0
    lam= grad'*grad./(grad'*H*grad); %Formula para hallar lamda
    x = x0+lam.*grad'; %Calcular x
    x0=x;%x es el nuevo x0
    fx=fobj(x0); % Evaluar el punto en la funcion
    iter=iter+1; %Contador de iteraciones
    gradiente=norm(grad); % Calcular el gradiente
    else 
    error("\n Se ah alcanzado el numero maximo de iteraciones. \n")    
    end
end
