% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Fecha: 14/10/21

% Problema 1:
% Se carga una viga de madera, encuentre la posicion dentro de la viga en donde 
%no hay momento, la ecuacion del momento es 10/log10(x).
clc
syms x;
gx = @(x) (0.01*x^2 - 3.07)/0.42;
x0 = 0;
es = 200;
imax= 1000;
try  
    fprintf("Metodo punto fijo para ecuaciones no lineales. \n")
    fprintf('Ejmeplo1:\n');
    tic
    [xr, iter,ea] = puntofijo(x0, es, imax , gx);
    tiempo=toc;
    fprintf('El tiempo de ejecucion es:  %d \n',tiempo);
    fprintf('El valor de corte en y=%d,El numero de iteraciones es: %d',xr,h);

catch e
  fprintf('Error: %s\n',e.message);
end
