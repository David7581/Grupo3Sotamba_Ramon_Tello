% Función para el método de simpson 3/8
% Autores: Jonnathan Ramón David Tello
% Fecha de implementacion: 02/12/2021

% PARAMETROS DE ENTRADA
% f: Función a integrar.
% li: Limite inferior de la integral.
% ls: Limite superior de la integral.
% max: Máximo de iteraciones.
% PARAMETROS DE SALIDA
% s: Resultado aproximado de la integral.

function [s]= simpson3_8(f,ls,li,max)
  k=max;
  n=3*k;%Numero de interaciones.
  s=0; %Inicializar variable para el resultado.
  h=(ls-li)/n;%Formula para el punto medio de los limites
  for i=1:k% Aplicar el método dependiendo de las iteraciones.
    s=s+(3*h/8)*(f(li)+3*f(li+h)+3*f(li+2*h)+f(li+3*h));%Calculo mediante la formula de simpson 
    li=li+3*h;% Actualizar variable del limite inferior.
  end
  integral = s;% Resultado de la integral.
end
