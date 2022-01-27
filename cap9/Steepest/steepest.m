% Funcion para el metodo de Steepest Descend
% Autores: Jonnathan Ramón-David Tello
% Fecha: 13/01/2022

% PARAMETROS DE ENTRADA:
% f1: Funcion a evaluar
% x0: Vector inicial
% maxiter: Numero maximo de iteraciones
% tol: Error tolerancia

% PARAMETROS DE SALIDA:
% x: Solucion x 
% f(x): Solucion x evaluada en la funcion

function x_fx=steepest(f1,x0,maxiter,tol)
%Convertir a f de linea y definir x1,x2 para evaluar el pto inicial
fx= inline(f1); 
fobj= @(x) fx(x(:,1),x(:,2));

grad= gradient(f1);%Encontrar el gradiente de la funcion
% Convertir a f de linea y definir x1 x2
G=inline(grad); 
gradx= @(x) G(x(:,1),x(:,2));

H1= hessian(f1); %Calcular la matriz Hessian
Hx= inline(H1); %Convertimos en una funcion linea


iter=0; %Variable para contar las iteraciones
X=[]; %Matriz donde se guardaran los puntos solucion en cada iteracion

%Ejecutar bucle hasta que el gradiente tienda a 0 y se cumplan las iteraciones
while norm(gradx(x0))>tol && iter <maxiter 
    X=[X;x0]; %Guardar los vectores de cada iteracion
    %Aplicacion del metodo
    S= -gradx(x0); %Calcular gradiente en x0
    H= Hx(x0); %Calcular matriz Hessian en x0
    lam= S'*S./(S'*H*S); %Formula para hallar lamda
    Xi_1= x0+lam.*S'; %Calcular xi+1 
    x0=Xi_1; %Xi+1 es el nuevo x0
    iter=iter+1; %Contador de iteraciones
end
fprintf('Solucion x = [%f, %f]\n', x0(1),x0(2)); 
fprintf('Solucion f(x)= %f \n', fobj(x0));
x_fx=x0;
end