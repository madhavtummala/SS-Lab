clc
clear all
close all
fprintf('Part A\n');

for  q = 1:12
    fprintf('Question %d\n',q);
    disp(linearity(q));
    disp(timeinvariance(q));
    disp(causality(q));
    disp(memor(q));
    disp(stable(q));
    fprintf('\n');
end

syms T;
tmin = -10;
tmax = 10;
dt = 0.001;

figure
subplot(2,2,1)
t = tmin:dt:tmax;
x = x2(t);
plot(t,x,'r');

subplot(2,2,2)
t = tmin:dt:tmax;
x = x2(t).^2;
plot(t,x,'r');

subplot(2,2,3)
t = tmin:dt:tmax;
x = x2(t).^2;
plot(t,x,'r');

subplot(2,2,4)
t = tmin:dt:tmax;
x = sqrt(x2(t).^2);
plot(t,x,'r');

figure
subplot(2,2,1)
t = tmin:dt:tmax;
x = x2(t);
plot(t,x,'r');
xlabel('t');
ylabel('x2(t)');

subplot(2,2,2)
t = tmin:dt:tmax;
x = x2(t-5);
plot(t,x,'r');
xlabel('t');
ylabel('x2(t-5)');

subplot(2,2,3)
t = tmin:dt:tmax;
x = x2(t-5);
plot(t,x,'r');
xlabel('t');
ylabel('x2(t-5)');

subplot(2,2,4)
t = tmin:dt:tmax;
x = x2((t-5)+5);
plot(t,x,'r');
xlabel('t');
ylabel('x2(t)');

figure
subplot(2,2,1)
t = tmin:dt:tmax;
x = x2(t);
plot(t,x,'r');
xlabel('t');
ylabel('x2(t)');

subplot(2,2,2)
t = tmin:dt:tmax;
x = x2(t).*x2(t-2);
plot(t,x,'r');
xlabel('t');
ylabel('x2(t)*x2(t-2)');

    

    



