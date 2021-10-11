function y = prueba(ec,xa,n,err) 
% Esta funcion aproxima la raiz de una funcion 
% utilizando el metodo de Newton_Raphson
% Entradas : ecuacion, valor inicial, numero de iteraciones, error 
% Salida : raiz aproximada 
syms x;
fun=ec;
dev=diff(fun); % derivada de la funcion 
xo=xa;
tol=err;
for k=1:n
   xi=xo-subs(fun,xo)/subs(dev,xo); % metodo de Newton_Raphson 
    
    if (abs(xi-xo)>tol)
        rz = xi;  
        %fprintf('x%d = %f es una aproximacion\n',k,xi)
      
    end
    xo=xi;
end
y = vpa(rz,3); % valor retornado, redondeado  
end 
 



 