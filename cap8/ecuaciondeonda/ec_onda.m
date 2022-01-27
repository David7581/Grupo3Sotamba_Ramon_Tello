%Método de diferencias finitas para la ecuación de onda
% Jonathan Ramon David Tello
% Fecha de implementacion: 2/1/2022
% Parametros de entrada
% m,n,T : constantes
% g : ecuacion
% l : longitud de la cuerda
function [x]=ec_onda(g,l,m,n,T);
h=l/m;
k=T/n;
alfa=1/(4*pi);
lambda=(alfa*k)/h;
%Matriz con los valores de x
x=0:h:l;
%Elemntos diagonales
d=2*(1-lambda^2);
%Crear una matriz tridiagonal
A=diag(d*ones(m-1,1));
A=A+diag(lambda^2*ones(m-2,1),1)+diag(lambda^2*ones(m-2,1),-1)
w0=zeros(m-1,1) % Generar vector de ceros
%Formulas diferenciales
w1= w0'+k*g(x(2:4));
w1=w1'
w2=A*w1-w0

end





