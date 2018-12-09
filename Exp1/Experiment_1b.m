clc
clear all
close all

% part b
dt = 0.01;
tmax = 10;
tmin = -10;

t = tmin:dt:tmax;
x1 = sin(sqrt(2).*t) + sin(2.*t) ;
subplot(3,2,1);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx1(t)');

syms t;
fun = @(t) (sin(sqrt(2).*t) + sin(2.*t)).^2;
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = 3*cos(2*pi*t/3 + pi/3).*u(t) ;
subplot(3,2,2);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx2(t)');

syms t;
fun = @(t) (3*cos(2*pi*t/3 + pi/3)).^2;
Ex = limit(int(fun,0,t),t,inf);
Px = limit(int(fun,0,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = u(t+1/2) - u(t-1/2) ;
subplot(3,2,3);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx3(t)');

disp('Energy = ');
disp('1');
disp('Power = ');
disp('1');

t = tmin:dt:tmax;
x1 = r(t+1) - 2*r(t) + r(t-1) ;
subplot(3,2,4);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx4(t)');

syms t;
fun = @(t) (1-t).^2;
Ex = limit(int(fun,0,t),t,1);
Px = limit(int(fun,0,t),t,1);
disp('Energy = ');
disp(2*Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = sawtooth(2*t - 5/6) ;
subplot(3,2,5.5);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx5(t)');
