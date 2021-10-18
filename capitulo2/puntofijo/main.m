% Autores: David Tello, Jonathan Ramon, Javier Sotamba
%
% Fecha: 14/10/21

% Problema 1:
% Se carga una viga de madera, encuentre la posicion dentro de la viga en donde 
%no hay momento, la ecuacion del momento es 10/log10(x).

f = @(x) 10./log10(x);
x0 = 11;
tol = 0.01;
itermax= 1000;
try 
    [xr, k] = puntofijo(f, x0, tol, itermax);
    fprintf('Ejmeplo1:');
    fprintf('El valor de corte es y=%d, el número de iteraciones es %d\n',xr,k);
    h=figure(1);
    hax = axes;
    x = 0:0.1:10;
    plot(x, f(x));
  
    hold on;
    grid on;
    
    line([x0 x0],get(hax, 'YLim'))
    text(x0,0,'x0');
   
    y = 20*x;
    plot(x,y);
    
    text(xr,0,'xr');
    
    legend ("f(x)");
    xlabel ("x");
    ylabel ("f(x)"); 
catch e
  fprintf('Error: %s\n',e.message);
end

% Problema 2:
%El volumen (v) de un liquido contenido en un tanque horizontal cilíndrico de radio (r) y longitud (l), 
%esta relacionado con la profundidad (h) del liquido por:

f = @(x) 4*acos(1-x/2)-sqrt(16*x-4*x.^2)+sqrt(4*x.^3-x.^4)-1.7;
x0 = 0;
tol = 0.01;
itermax= 100;
try 
    fprintf('Ejmeplo2:');
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
    
    text(xr,0,'xr');
    
    y = 20*x;
    plot(x,y);
   
    legend ("f(x)");
    xlabel ("x");
    ylabel ("f(x)"); 
catch e
  fprintf('Error: %s\n',e.message);
end


