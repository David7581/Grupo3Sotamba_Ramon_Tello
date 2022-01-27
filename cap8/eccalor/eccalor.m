%Método de diferencias finitas para la ecuación de conducción de calor
% Jonathan Ramon David Tello
% Fecha de implementacion: 2/1/2022
% Parametros de entrada
% alfa : constante
% dx : valor de paso
% L : valor final de x
% dt : delta tiempo
% tmax : tiempo maximo
% CFL : lambda
function [X,Nt,T]=eccalor(alfa,dx,dt,L,tmax); 
CFL=alfa*dt/(dx^2); 
X=0:dx:L; %Matriz con los valores de x
Nt=ceil(tmax/dt)+1; % Numero de elemntos de tiempo
Nx=length(X); %Cantidad de elementos de x
%Generar matriz de temperatura
T=zeros(Nt,Nx);
T(1,:)=20; T(:,1)=100; T(:,end)=100; % Condiciones frontera
T(1,1)= (T(1,2)+T(2,1))/2; T(1,end)=(T(1,end-1)+T(2,end))/2;
%Aplicar la ecuacion de calor
for f=2:Nt %filas = tiempo
    for c=2:Nx-1 %columnas = posicion "x"
        T(f,c)=T(f-1,c)+CFL*(T(f-1,c+1)-2*T(f-1,c)+T(f-1,c-1));
    end    
end
plot(X,T), grid on