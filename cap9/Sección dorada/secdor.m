% Funcion para el metodo de la seccion dorada
% Autores: Jonnathan Ramón-David Tello
% Fecha: 07/01/2022

% PARAMETROS DE ENTRADA:
% f: Funcion a evaluar
% a: Punto inicial 
% b: Punto final 
% iter: Numero maximo de iteraciones
% error: Error de tolerancia
% g: Numero de grafica

% PARAMETROS DE SALIDA:
% x_min,fx_min: Par ordenado min   
 

function Px_Pfx=secdor(f,a,b,iter,error,g)

tau=0.618; %número aureo 
k=0; %variable auxiliar para las iteraciones

%ecuaciones para divir las regiones de la funcion
x1=a+(1-tau)*(b-a);
x2=a+tau*(b-a);

%evaluar los valores de x1,x2 en la funcion f
f_x1=f(x1);
f_x2=f(x2);

%bucle para iterar hasta que se cumplan las iteraciones y se cumpla la
%tolerancia de error
while((abs(b-a)>error)&& (k<iter)) 
   k=k+1; %Contador de las iteraciones
   
   if (f_x1<f_x2) %Comparar si el valor evaluado fx1<fx2
       b=x2; %Actualizar el intervalo b
       x2=x1; %Actualizar el intervalo a 
       
       x1=a+(1-tau)*(b-a); %Calcular el nuevo x1
       
       %Evaluar los nuevos intervalos
       f_x1=f(x1);
       f_x2=f(x2);
        
   else %Si el valor evaluado fx1>fx2
       a=x1; %Actualizar el intervalo a
       x1=x2; %Actualizar el intervalo b
       x2=a+tau*(b-a); %Calcular el nuevo x2
       
       %Evaluar los nuevos intervalos 
       f_x1=f(x1);
       f_x2=f(x2);    
   end
   %Grafica de los puntos
   figure(g)
   plot(x1,f_x1, '*b', x2, f_x2, '*r')
   hold on
  
end

%Condiciones para mostrar el resultado minimo
if (f_x1<f_x2)
    sprintf('x_min=%f',x1)
    sprintf('f(x_min)=%f',f_x1)
else
    sprintf('x_min=%f',x2)
    sprintf('f(x_min)=%f',f_x2)
end

end
    
       
       
       