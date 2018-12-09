tmin = -10;
tmax = 10;
dt = 1;
c=2;
k1 = randi(10);
k2 = randi(10);

x1 = @(t) t;
x2 = @(t) sin(t);
x3 = @(t) k1*t+k2*sin(t);

t = tmin:dt:tmax;
out1 = System(t,x1);
out2 = System(t,x2);
out3 = System(t,x3);
out4 = k1*System(t,x1)+k2*System(t,x2);
subplot(1,2,1)
plot(t,out3);
subplot(1,2,2)
plot(t,out4);

    