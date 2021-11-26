%Autores: David Tello, Javier Sotamba, Jonathan Ramon
%
%Fecha:18/10/21
%
%Problema 1:
%
% 
%
clc
fun = @(x) -0.001*x^2 -0.42*x + 3.07;
a=0;
b=7;
tol=0.1;
iter=1000;
try
fprintf("Metodo regula falsi para ecuaciones no lineales. \n")
fprintf('Ejmeplo1:\n');
tic
[r,iter] = regulafalsi(fun,a,b,tol,iter);
toc
fprintf('El valor de corte es y=%d, el numero de iteraciones es %d\n',r,iter);
h=figure(1);
    hax = axes;
    x = -10:0.1:10;
    plot(x, f(x));
  
    hold on;
    grid on;
    
    line([a a],get(hax, 'YLim'))
    text(a,0,'a');
    
    line([b b],get(hax, 'YLim'))
    text(b,0,'b');
   
    line([r r],get(hax, 'YLim'))
    text(r,0,'r');
    
    legend ("f(x)");
    xlabel ("x");
    ylabel ("f(x)");
    
catch e
    fprintf('Error: %s/n',e.message);
end
  