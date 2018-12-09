%finding energy and power of a signal

t0 = 10;
dt = 0.1;

t = -5:dt:5;

x = -3*t;
xsq = x.^2;

Ex = trapz(t,xsq)
Px = trapz(t,xsq)/t0

dt = 0.1;
t = -7:dt:13;

x = sin((t-3)/10);
xsq = x.^2;

Ex = trapz(t,xsq)
Px = trapz(t,xsq)/(2*pi)


