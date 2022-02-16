clear all;
close all;

k=5;
T=1;
w0=5;

A=1;
p=0;

tau=0;

sim('schemat',30)

figure(1);
hold on;
grid on;
plot(ans.tout, ans.x);
plot(ans.tout, ans.x1);
legend('y(t)','u(t)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2);
hold on;
grid on;
plot(ans.Re, ans.Im);
xlabel("Re[K(jw)]");
ylabel("Im[K(jw)]");


Rzeczywista = (k*cos(w0*tau)-T*w0*k*sin(w0*tau))/(1+(T^2)*(w0^2))
Urojona = (-k*sin(w0*tau)-T*w0*k*cos(w0*tau))/(1+(T^2)*(w0^2))