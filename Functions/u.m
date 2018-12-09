function y = u(t)

y1 = 0;
y2 = 1;

y = y1.*(t<0) + y2.*(t>=0);

end

