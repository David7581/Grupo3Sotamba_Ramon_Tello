% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Fecha: 14/10/21

% Problema 1:
% Utilice el método de punto fijo para determinar una raíz de f(x) = –x2+ 1.8x + 2.5
% con el uso de x0 = 5. Haga el cálculo hasta que ea sea menor que es = 0.05%

f = @(x) (-x).^2 + 1.8*(x) + 2.5;
x0 = 5;
tol = 0.05;
itermax= 8;
try 
    [xr, k] = puntofijo(f, x0, tol, itermax);
    fprintf('El valor de corte es y=%d, el número de iteraciones es %d\n',xr,k);
    h=figure(1);
    hax = axes;
    x = 0:0.1:20;
    plot(x, f(x));
  
    hold on;
    grid on;
    
    line([x0 x0],get(hax, 'YLim'))
    text(x0,0,'x0');
   
    y = 20*x;
    plot(x,y);
   
    legend ("f(x)");
    xlabel ("x");
    ylabel ("f(x)"); 
catch e
  fprintf('Error: %s\n',e.message);
end

% Problema 2:
% Usar el método de iteración del punto fijo para aproximar la raíz de
% f(x) = x^2 - 5x - e^2 comenzando con x0 = 0 Hacer 5 iteraciones. 

f = @(x) x.^2 - 5*x - exp(2);
x0 = 0;
tol = 0.01;
itermax= 5;
try 
    [xr, k] = puntofijo(f, x0, tol, itermax);
    fprintf('El valor de corte es y=%d\n, el número de iteraciones es %d\n',xr,k);
    h=figure(2);
    hax = axes;
    x = -5:0.1:20;
    plot(x, f(x));
  
    hold on;
    grid on;
    
    line([x0 x0],get(hax, 'YLim'))
    text(x0,0,'x0');
   
    y = 20*x;
    plot(x,y);
   
    legend ("f(x)");
    xlabel ("x");
    ylabel ("f(x)"); 
catch e
  fprintf('Error: %s\n',e.message);
end

