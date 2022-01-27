% Metodo de diferencias finitas divididas hacia adelante
% Autores
% Jonnathan Ramon, David Tello

fprintf("Diferencias finitas divididas hacia atras.\n");
% Ejemplo 1
clc
try
    syms x;
    y1 = -0.1 * x^.4 - 0.15 * x^.3 - 0.5 * x^.2 - 0.25 * x + 1.2; % Funcion
    x0 = 0.5; % Punto de derivada
    p = 0.25; % Tamano de paso
    fprintf("\nEjemplo 1\n");
    [f] = diffinitasadelante(y1,x0, p); 
    for i = 1:4
        y1 = diff(y1);
        r1 = subs(y1 ,x ,x0);
        error_relativo1 = abs(r1 - f(i)) * 100 / r1;
        fprintf("\nDerivada %i en %f es: %f\n", i, x0, f(1,i)); % valor de la derivda en x0
        fprintf("\nEl error en la derivada %i es de; %f %%\n", i, error_relativo1); % error de la derivada en x0
    end
catch e
    fprintf("Error: %s\n",e.message);
end

% Ejemplo 2
try
    y1 = sin(x); % Funcion
    x0 = 0.5; % Punto de derivada
    p = 0.25; % Tamano de paso
    fprintf("\nEjemplo 1\n");
    [f] = diffinitasadelante(y1,x0, p); 
 
    for i = 1:4
        y1 = diff(y1);
        r1 = subs(y1 ,x ,x0);
        error_relativo1 = abs(r1 - f(i)) * 100 / r1;
        fprintf("\nDerivada %i en %f es: %f\n", i, x0, f(1,i)); % valor de la derivda en x0
        fprintf("\nEl error en la derivada %i es de; %f %%\n", i, error_relativo1); % error de la derivada en x0
    end
catch e
    fprintf("Error: %s\n",e.message);
end