tmin = 2;
tmax = 5;
dt = 0.1;

t = tmin:dt:tmax;
k1 = randi(10);
k2 = randi(10);

x1 = @(t) sin(t);
x2 = @(t) cos(t);
x3 = @(t) k1*sin(t) + k2*cos(t);

% Part A
% System 1
w = randi(10);
y1 = x1(t).*cos(w*t);
y2 = x2(t).*cos(w*t);
y3 = x3(t).*cos(w*t);
y4 = y1.*k1 + y2.*k2;
xmax = max([max(y3) max(y4)]);
xmin = min([min(y3) min(y4)]);

figure
subplot(1,2,1)
stem(t,y3,'r');
axis([tmin tmax xmin xmax]);
subplot(1,2,2)
stem(t,y4,'r');
axis([tmin tmax xmin xmax]);


% System 2
y1 = x1(t)./x1(t-1);
y2 = x2(t)./x2(t-1);
y3 = x3(t)./x3(t-1);
y4 = y1.*k1 + y2.*k2;
xmax = max([max(y3) max(y4)]);
xmin = min([min(y3) min(y4)]);

figure
subplot(1,2,1)
stem(t,y3,'r');
axis([tmin tmax xmin xmax]);
subplot(1,2,2)
stem(t,y4,'r');
axis([tmin tmax xmin xmax]);

% System 3
y1 = x1(t).^2;
y2 = x2(t).^2;
y3 = x3(t).^2;
y4 = y1.*k1 + y2.*k2;
xmax = max([max(y3) max(y4)]);
xmin = min([min(y3) min(y4)]);

figure
subplot(1,2,1)
stem(t,y3,'r');
axis([tmin tmax xmin xmax]);
subplot(1,2,2)
stem(t,y4,'r');
axis([tmin tmax xmin xmax]);

% System 4
y1 = x1(t-5);
y2 = x2(t-5);
y3 = x3(t-5);
y4 = y1.*k1 + y2.*k2;
xmax = max([max(y3) max(y4)]);
xmin = min([min(y3) min(y4)]);

figure
subplot(1,2,1)
stem(t,y3,'r');
axis([tmin tmax xmin xmax]);
subplot(1,2,2)
stem(t,y4,'r');
axis([tmin tmax xmin xmax]);


% Part B


