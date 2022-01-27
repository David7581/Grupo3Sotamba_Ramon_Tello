% Funcion para el m�todo de Gauss Laguerre
% Autores: Jonnathan Ram�n,David Tello
% Fecha de implementacion: 06/12/2021
% PARAMETROS DE ENTRADA
% R: funci�n en la que se aplicara Gauss-Laguerre
% R1: funci�n multiplicada por exp(-x)
% n: n�mero de nodos
% PARAMETROS DE SALIDA
% r: aproximaci�n al resultado real
% err_prct: error porcentual del m�todo

function [r,err_prct] = gauss_laguerre(R,R1,n)

R = inline(R,'x');   % convertir entrada en una funci�n inline

for i=1:n
    syms t % Declaramos la variavle simbolica t
    % aplicaci�n de la formula para determinar el polinomio de laguerre
    F = ((exp(t)/factorial(n))*(diff((t^n)*(exp(-t)),n)));
    F = simplify(F);
    % c�lculo de las raices del polinomio 
    ec = F==0;
    a = vpasolve(ec,t); %Resuelve numericamente la ecuacion para la variable t
 end

% aplicaci�n de la formula para determinar la derivada del
% polinomio de laguerre
K = ((exp(t)/factorial(n+1))*(diff((t^(n+1))*(exp(-t)),(n+1))));
K = simplify(K);
deri = diff (K);
m = inline(deri,'t'); %transformar deri en una funcion inline


% Desarrolla la sumatoria y evalua en la funcion
c = 0;
for i=1:n
    raices = a(i);   
    L = (m(raices))^2;
    A = 1/(raices*L);  % c�lculo de f(x) o el factor de multiplicaci�n en la sumatoria
    z = (A*R(raices));
    c = c + z; 
end
r=c;   % salida de la integral
fun_int = int(R1,0,Inf);   % c�lculo de la integral 
err_prct = abs(abs(fun_int - r)/fun_int) * 100;  % error porcentual del m�todo
end

