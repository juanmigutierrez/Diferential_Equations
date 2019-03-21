function [w] = Euler_01( f,t0,y0,h, N )
% matodo de Euler para ec. diferenciales de primer orden
w(1)=y0;
t(1)=t0(1);
for i=1:N
    t(i+1)=t(i)+h;
    w(i+1)=w(i)+h*f(t(i),w(i));
end
