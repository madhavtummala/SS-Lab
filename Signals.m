%plotting basic signals

t=0:0.001:6;
x1=exp(-t).*sin(20*pi*t) + exp(-t/2).*sin(19*pi*t);
subplot(2,1,1);
p=plot(t,x1,'k');
% set(p,'LineWidth',1);
xlabel('t');
ylabel('x1(t)');
t=-6:0.001:6;
x2=sinc(t).*cos(20*pi*t);
subplot(2,1,2);
p=plot(t,x2,'k');
% set(p,'LineWidth',1);
xlabel('t');
ylabel('x2(t)');