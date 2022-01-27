% Autores: Jonnathan Ramón-David Tello
clc
syms y t
% ejemplo 1
try 
fprintf('Metodo de Heun\n');
fprintf('Ejemplo 1 \n');
f = (12*(x.^2))-(20*x)+8.5;
xf=3;
h=0.5;
x0=0;
y0=2.75; 
n = int16((xf-x0)/h);
E=dsolve('Dy=(exp(t)+log(t)-2*y)/t','y(1)=3/4');
[Y,exacta,error]= heun(f,x0,xf,h,y0,E,n);
catch e
    fprintf("Error: %s\n", e.message);
end

