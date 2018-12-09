function y = g(t)

y1 = 0;
y2 = 1;
y3 = 0;

y = y1.*(t<0) + y2.*(t==0) + y3.*(t>0);

end
