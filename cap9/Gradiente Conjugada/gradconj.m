% Funcion para el metodo de Gradiente Conjugada
% Autores: Jonnathan Ramón-David Tello
% Fecha: 17/01/2022

% PARAMETROS DE ENTRADA:
% f1: Funcion a evaluar
% x0: Vector inicial
% maxiter: Numero maximo de iteraciones
% tol: Error tolerancia

% PARAMETROS DE SALIDA:
% x: Solucion x 
% f(x): Solucion x evaluada en la funcion

function x_fx=gradconj(f1,x0,maxiter,tol)
%Convertir a f de linea y definir x1,x2 para evaluar el vector inicial
fx= inline(f1); 
fobj= @(x) fx(x(:,1),x(:,2));

grad= gradient(f1);%Encontrar el gradiente de la funcion
% Convertir a f de linea y definir x1 x2
G=inline(grad); 
gradx= @(x) G(x(:,1),x(:,2));

H1= hessian(f1); %Calcular la matriz Hessian
Hx= inline(H1); %Convertimos en una funcion linea


iter=0; %Variable para contar las iteraciones
S=0; %Variable para las direcciones
X=[];%Matriz donde se guardaran los puntos solucion en cada iteracion
Gpr= -gradx(x0); %Calcular gradiente x0

%La norma del gradiente no puede ser 0, porque se usara en una division
if norm(Gpr)==0
    error("\n Cambie el punto inicial x0. \")
end

%Ejecutar bucle hasta que el gradiente tienda a 0 y se cumplan las iteraciones
while norm(gradx(x0))>tol && iter<maxiter
    if iter<maxiter
    X= [X;x0];  %Guardar los vectores de cada iteracion
    %Aplicacion del metodo
    Gi= -gradx(x0); %Calcular gradiente
    H= Hx(x0); %Calcular matriz Hessian
    bet= norm(Gi).^2./norm(Gpr).^2; %Calcular beta
    S= Gi + bet.*S; %Calcular la nueva direccion
    lam= Gi'*Gi./(S'*H*S);%Calcular lamda
    Xnew= x0+lam.*S'; %Calcular el nuevo x0
    x0=Xnew; %Actualizar x0
    Gpr=Gi; %Actualizar gradiente
    iter=iter+1; %Contador de iteraciones
    else 
    error("\n Se ah alcanzado el numero maximo de iteraciones. \n")    
    end
end
fprintf('Solucion x = [%f, %f]\n', x0(1),x0(2)); 
fprintf('Solucion f(x)= %f \n', fobj(x0));
x_fx=x0; 
end