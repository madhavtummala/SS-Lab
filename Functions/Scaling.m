tmin = -4;
tmax = 20;

dt=0.01;

t = tmin:dt:tmax;

g0 = g(t);
g1 = 3*g(t+1);
g2 = g(3*t)/2;
g3 = -2*g((t-1)/2);

gmax = max([max(g0) max(g1) max(g2) max(g3)]);
gmin = min([min(g0) min(g1) min(g2) min(g3)]);

subplot(2,2,1);
plot(t,g0,'k');
title('original');
axis([tmin tmax gmin gmax]);grid;

subplot(2,2,2);
plot(t,g1,'k');
title('change 1');
axis([tmin tmax gmin gmax]);grid;

subplot(2,2,3);
plot(t,g2,'k');
title('change 2');
axis([tmin tmax gmin gmax]);grid;

subplot(2,2,4);
plot(t,g3,'k');
title('change 3');
axis([tmin tmax gmin gmax]);grid;