clc
clear all
close all

% part c
dt = 0.01;
tmax = 10;
tmin = -10;

t = tmin:dt:tmax;
x1 = x(t);
% cal(x1);

t = tmin:dt:tmax;
x2 = x(-4*t+6);

% cal(x1);

t = tmin:dt:tmax;
x3 = 6*x(3*t/2 + 4);

% cal(x1);

xmax = max([max(x1) max(x2) max(x3)]);
xmin = min([min(x1) min(x2) min(x3)]);


subplot(2,2,1.5);
p = plot(t,x1,'r');
title('Original');
xlabel('\itt');ylabel('\itx(t)');
axis([tmin tmax xmin xmax]);

subplot(2,2,3);
p = plot(t,x2,'r');
title('Modification 1');
xlabel('\itt');ylabel('\itx(-4t +6)');
axis([tmin tmax xmin xmax]);

subplot(2,2,4);
p = plot(t,x3,'r');
title('Modification 2');
xlabel('\itt');ylabel('\it6x(3t/2 +4)');
axis([tmin tmax xmin xmax]);
