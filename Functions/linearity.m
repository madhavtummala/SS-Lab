function out = linearity(q)

syms T;
syms t;

if(q==1)
    c =randi(10);
    out1 = heaviside(x1(T));
    out2 = heaviside(x2(T));
    out3 = heaviside(x1(T)+x2(T));
    out4 = heaviside(x2(T)*c);
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==2)
    c =randi(10);
    out1 = x1(T-5) + x1(3-T);
    out2 = x2(T-5) + x2(3-T);
    out3 = x1(T-5) + x1(3-T) + x2(T-5) + x2(3-T);
    out4 = x2(T-5)*c + x2(3-T)*c;
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==3)
    c =randi(10);
    out1 = x1(t)/x1(t-1);
    out2 = x2(t)/x2(t-1);
    out3 = (x1(t)+x2(t))/(x1(t-1)+x2(t-1));
    out4 = x2(t)/x2(t-1);
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==4)
    c =randi(10);
    out1 = x1(t/2);
    out2 = x2(t/2);
    out3 = x1(t/2)+x2(t/2);
    out4 = x2(t/2)*c;
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==5)
    c =randi(10);
    w = randi(10);
    out1 = x1(t)*cos(w*t);
    out2 = x2(t)*cos(w*t);
    out3 = x1(t)*cos(w*t)+x2(t)*cos(w*t);
    out4 = x2(t)*cos(w*t)*c;
    
    if(out3 == out1+out2 && out4 == out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end
 
if(q==6)
    c =randi(10);
        out1 = limit(int(x1(T),-Inf,T),T,0);
        out2 = limit(int(x2(T),-Inf,T),T,0);
        out3 = limit(int(x1(T) + x2(T),-Inf,T),T,0);
        out4 = limit(int(x2(T)*c,-Inf,T),T,0);
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==7)
    c =randi(10);
    n= randi(10);
        out1 = (x1(t))^n;
        out2 = (x2(t))^n;
        out3 = (x1(t)+x2(t))^n;
        out4 = (c*x2(t))^n;
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==8)
    c =randi(10);
        out1 = exp(x1(t));
        out2 = exp(x2(t));
        out3 = exp(x1(t)+x2(t));
        out4 = exp(c*x2(t));
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==9)
    c =randi(10);
        out1 = diff(x1(T),T);
        out2 = diff(x2(T),T);
        out3 = diff(x1(T)+x2(T),T);
        out4 = diff(c*x2(T),T);
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==10)
    c =randi(10);
        out1 = diff(x1(T-1),T);
        out2 = diff(x2(T-1),T);
        out3 = diff(x1(T-1)+x2(T-1),T);
        out4 = diff(c*x2(T-1),T);
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==11)
    c =randi(10);
        out1 = x1(T)*diff(x1(T),T);
        out2 = x2(T)*diff(x2(T),T);
        out3 = (x1(T)+x2(T))*diff(x1(T)+x2(T),T);
        out4 = c*x2(T)*diff(c*x2(T),T);
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end

if(q==12)
    c =randi(10);
        out1 = x1(T)*diff(x1(T-1),T);
        out2 = x2(T)*diff(x2(T-1),T);
        out3 = (x1(T)+x2(T))*diff(x1(T-1)+x2(T-1),T);
        out4 = c*x2(T)*diff(c*x2(T-1),T);
    
    if(out3 == out1+out2 && out4==out2*c)
        out = 'Linear';
    else
        out = 'Non Linear';
    end
end
    
    
    