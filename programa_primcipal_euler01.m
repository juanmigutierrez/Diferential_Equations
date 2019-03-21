% scrip usa euler01
%
%funcion y'=f(t,y)
clear all
f=@(t,y) 3+exp(-t)-(y/2); % funci�n del problema 3+exp(-t)-(y/2
u=@(t) 6-2*exp(-t)-3*exp(-t/2); % soluci�n anal�tica para comparar 6-2*exp(-t)-3*exp(-t/2)
y0=1;
verror =[];
%N=50; % n�mero de iteraciones.
%h=1/N;
%t0=0:h:1; % intervalo (0,1)
%y=Euler_01(f,t0,y0,h,N) % Invoca la funci�n que calcula la soluci�n aproximada.
%v=u(t0);
%error=abs(v-y) % error num�rico


for i =10:20
    h=1/i;
    t0=0:h:1;
    y=Euler_01(f,t0,y0,h,i);
    v=u(t0);
    error=abs(v-y);
    verror(i-9)=max(error)
end

