function y = x2_2(t)

y = t^2.*(t<0) + x2(t).*(t==0) + t^2.*(t>0);

end