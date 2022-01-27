function [] = splinecuadrado(x,y)
n = length(x);

%Configuramos las ecuaciones para hallar los coeficientes del interpolante
%cuadratico
M=[1 x(1) x(1)^2
    1 x(2) x(2)^2
    1 x(3) x(3)^2];
Y=[y(1)
    y(2)
    y(3)];
%Determinamos los coeficientes del interpolante cuadratico
A=inv(M)*YL
z=sym('z');
a0=sym('a0');
a1=sym('a1');
a2=sym('a2');
fq=subs(fq,a0,A(1));
fq=subs(fq,a1,A(2));
fq=subs(fq,a2,A(3));
