% La siguiente función realiza el metodo de gauss legendre con 3 puntos
% Autores
% Javier Sotamba, David Tello, Jonnathan Ramón
% Fecha de implementacion: 06/12/2021
% Parametros de entrada
% g: función en la que se aplicara dl metodo
% a: límite inferior de la integral
% b: límite superior de la integral
% n: cantidad de trapecios a utilizar

% Parámetros de salida 
% r: aproximación al resultado real

function r = gausslegendretres(g, a, b)
  
w=[0.5555556 0.8888889 0.5555556];
z=[-0.7745967 0 0.7745967];
m=(b-a)/2;
m2=(a+b)/2;
def=1;
intrl=w(1)*subs(g,m*z(1)+m2)+w(2)*subs(g,m*z(2)+m2)+w(3)*subs(g,m*z(3)+m2);
r= double(m*intrl); 

  end