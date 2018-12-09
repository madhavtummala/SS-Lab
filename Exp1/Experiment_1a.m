clc
clear all
close all

%part a
dt = 0.01;
tmax = 10;
tmin = -10;

figure;
t = tmin:dt:tmax;
x1 = u(t);
subplot(2,2,1);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx1(t)');

syms t;
fun = @(t) 1;
Ex = limit(int(fun,0,t),t,inf);
Px = limit(int(fun,0,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = r(t);
subplot(2,2,2);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx2(t)');

syms t;
fun = @(t) t;
Ex = limit(int(fun,0,t),t,inf);
Px = limit(int(fun,0,t)/t,t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = g(t);
subplot(2,2,3);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx3(t)');

syms t;
fun = @(t) 1;
disp('Energy = ');
disp('1');
disp('Power = ');
disp('0');

t = tmin:dt:tmax;
x1 = sgn(t);
subplot(2,2,4);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx4(t)');

syms t;
fun = @(t) 1;
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px)

figure;
t = tmin:dt:tmax;
C=1;a=1;
x1 = C*exp(a*t);
subplot(2,2,1);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx5(t)');

syms t;
fun = @(t) C*C*exp(a*2*t);
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px)

t = tmin:dt:tmax;
a=1;b=1;
s = a + 1i*b;
x1 = exp(s*t);
subplot(2,2,2);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx6(t)');

syms t;
fun = @(t) exp(2*a*t)*(cos(b*t).^2);
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
a=1;
x1 = exp(-a*m(t));
subplot(2,2,3);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx7(t)');

syms t;
fun = @(t) exp(-a*2*t);
Ex = limit(int(fun,0,t),t,inf);
Px = limit(int(fun,0,t)/t,t,inf);
disp('Energy = ');
disp(2*Ex);
disp('Power = ');
disp(Px);


t = tmin:dt:tmax;
x1 = exp(-3.*(t.^2));
subplot(2,2,4);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx8(t)');

syms t;
fun = @(t) exp(-6.*(t.^2));
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

figure;
t = tmin:dt:tmax;
f = 1;
x1 = sin(2*pi*f*t);
subplot(2,2,1);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx9(t)');

syms t;
fun = @(t) sin(2*pi*f*t).^2;
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = sinc(t);
subplot(2,2,2);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx10(t)');

syms t;
fun = @(t) (sin(t)/t).^2;
Ex = limit(int(fun,0,t),t,inf);
Px = limit(int(fun,0,t)/t,t,inf);
disp('Energy = ');
disp(2*Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = (cos(3*pi*t).*u(t) + cos(3*pi*-t).*u(-t))/2;
subplot(2,2,3);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx11(t)');

syms t;
fun = @(t) (cos(3*pi*t).^2)/4;
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);

t = tmin:dt:tmax;
x1 = (sin(3*pi*t).*u(t) - sin(3*pi*-t).*u(-t))/2;
subplot(2,2,4);
plot(t,x1,'r');
xlabel('\itt');ylabel('\itx12(t)');

syms t;
fun = @(t) (sin(3*pi*t).^2)/4;
Ex = limit(int(fun,-t,t),t,inf);
Px = limit(int(fun,-t,t)/(2*t),t,inf);
disp('Energy = ');
disp(Ex);
disp('Power = ');
disp(Px);