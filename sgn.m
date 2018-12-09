function y = sgn(t)

y1 = -1;
y2 = 0;
y3 = +1;

y = y1.*(t<0) + y2.*(t==0) + y3.*(t>0);

end
