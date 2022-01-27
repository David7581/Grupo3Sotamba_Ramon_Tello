% La siguiente funcion realiza el Método de Gauss-Legendre
% Autores
% Jonathan Ramon, David Tello
% Parametros de entrada
% R: funcion en la que se aplicara Gauss-Legendre
% a: limite inferior de la integral
% b: limite superior de la integral
% n: cantidad de intervalos a utilizar

% Parametros de salida 
% r: aproximación al resultado real
% err_prct: error porcentual del método
% err_trun: error de truncamiento del método

function [r,err_prct,err_trun] = impropias(R,a,b,n)
syms x t u
c = 0;  % inicialización de variable
funt_int = int(R,a,b);  % cálculo de la integral en el intervalo

if a*b > 0
    x= 1/t;
    R = (t^(-2))*eval(R);   % cambio de variable
    a1=1/b; b1=1/a;         % nuevos valores de limites
    h=(2*t-a1-b1)/(b1-a1);  % cambio de variable
    t=solve(u==h,t);        % despeje de variable
    dt=diff(t,'u');         % derivada para el cambio de variable
    R = dt*eval(R);         % ecuacion a ser evaluado con la cuadratura de gaus
else
    if a == -Inf
        c2=-1;                  % nuevo limite de integracion en la divison de la integral
        h1=(2*t-c2-b)/(b-c2);   % cambio de variable
        x=solve(u==h1,t);       % despeje de variable
        dt1=diff(x,'u');        % derivada para el cambio de variable
        R1 = dt1*eval(R);       % primera parte de la ecuacion
        x= 1/t;
        R = (t^(-2))*eval(R);   % cambio de variable
        a1=1/c2; b1=1/a;        % nuevos valores de los limites
        h2=(2*t-a1-b1)/(b1-a1); % cambio de variable
        t=solve(u==h2,t);       % despeje de variable
        dt2=diff(t,'u');        % derivada para el cambio de variable
        R2 = dt2*eval(R);       % segunda parte de la ecuacion
        R= R1+R2;               % ecuacion a ser evaluado con la cuadratura de gaus
    
    elseif  b == Inf
        c2=1;
        h1=(2*t-c2-a)/(c2-a);   % nuevo limite de integracion en la divison de la integral
        x=solve(u==h1,t);       % cambio de variable
        dt1=diff(x,'u');        % despeje de variable
        R1 = dt1*eval(R);       % derivada para el cambio de variable
        x= 1/t;
        R = (t^(-2))*eval(R);   % cambio de variable
        a1=1/b; b1=1/c2;        % nuevos valores de los limites
        h2=(2*t-a1-b1)/(b1-a1); % cambio de variable
        t=solve(u==h2,t);       % despeje de variable
        dt2=diff(t,'u');        % derivada para el cambio de variable
        R2 = dt2*eval(R);       % segunda parte de la ecuacion
        R= R1+R2;               % ecuacion a ser evaluado con la cuadratura de gaus
    end
end

for i=1:n
    syms t
    % uso del polinomio de legendre y aplicación de la formula para
    % determinar el polinomio con el que se determinaran los argumentos 
    % de la función
    F = ((((-1)^i)/((2^i)*factorial(i)))*(diff((1-((t)^2))^i,i)));
    F = simplify(F);
    % cálculo de las raices del polinomio 
    ec = F==0;
    a1 = vpasolve(ec,t);
end

% aplicación de la formula para determinar la derivada n-esima del
% polinomio de legendre
K = ((((-1)^(n))/((2^(n))*factorial(n)))*(diff((1-((t)^2))^(n),(n))));
K = simplify(K);
deri = diff (K);
m = inline(deri,'t') ;

det = diff(R,(2*n)+2);
det = inline(det,'u');

R = inline(R,'u');       % convertir entrada en una función de linea
T = @(t) R(((b-a)*t + (b+a))/2);
for i=1:n
    raices = a1(i);
    P = (m(raices))^2;
    A = 2/((1-((raices)^2))*P);  % cálculo de Ai o el factor de multiplicación en la sumatoria
    c = c + (A*R(raices)); 
end
r=c;
err_trun = (((2^((2*n)+3))*((factorial(n+1))^4))/(((2*n)+3)*((factorial((2*n)+2))^3)))*det(r); % error truncamiento
err_prct = abs(abs(funt_int - r)/funt_int) * 100;  % error porcentual del método

end

