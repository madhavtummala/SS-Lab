function y = r(t)

y1 = 0;
y2 = t;

y = y1.*(t<0) + y2.*(t>=0);

end
