% Metodo de diferencias finitas para para la ecuación de conducción de calor
% Autores
% Jonathan Ramon, David Tello
% Fecha de implementacion: 2/1/2022
clc
alfa=1;
dx=0.25;
dt=0.02;
L=1;
tmax=1;
fprintf('Ejemplo 1')
try
[X,Nt,T]=eccalor(alfa,dx,dt,L,tmax);
fprintf('      tiempo       temperaturas\n')
fprintf('          t  ')
fprintf('\t %4.2f',X), fprintf('\n')
for f=1:Nt
fprintf('\t \t %5.3f \t %4.2f\t %4.2f\t %4.2f\t %4.2f\t %4.2f\n',(f-1)*dt,T(f,:))
end
catch e
    fprintf("Error: %s\n", e.message);
end

fprintf('Ejemplo 2\n')
alfa=2;
dx=0.25;
dt=0.02;
L=1;
tmax=0.4;
try
[X,Nt,T]=eccalor(alfa,dx,dt,L,tmax);
fprintf('      tiempo       temperaturas\n')
fprintf('          t  ')
fprintf('\t %4.2f',X), fprintf('\n')
for f=1:Nt
fprintf('\t \t %5.3f \t %4.2f\t %4.2f\t %4.2f\t %4.2f\t %4.2f\n',(f-1)*dt,T(f,:))
end
catch e
    fprintf("Error: %s\n", e.message);
end
