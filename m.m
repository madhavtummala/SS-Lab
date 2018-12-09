function y = m(t)

y1 = t;
y2 = -t;

y = y1.*(t>0) + y2.*(t<0);

end
