% Función para el método de simpson 1/3
% Autores: Jonnathan Ramón,  David Tello
% Fecha de implementacion: 02/12/2021

% PARAMETROS DE ENTRADA
% f: Función a integrar.
% li: Limite inferior de la integral.
% ls: Limite superior de la integral.
% max: Máximo de iteraciones.
% PARAMETROS DE SALIDA
% s: Resultado aproximado de la integral.

function [s]= simpson1_3(f,ls,li,max)
  k=max;
  n=2*k;%Numero de iteraciones
  s=0; %Inicializar variable para el resultado de la integral.
  h=(ls-li)/n;%Formula punto medio de los limites
  for i=1:k %Aplicar el metodo dependiendo de las iteraciones.
    s=s+(h/3)*(f(li)+4*f(li+h)+f(li+2*h)); %Calculo mediante la formula de simpson.
    li=li+2*h; % Actualizar variable del limite inferior.
  end
 integral = s;%Resultado de la integral.
end
