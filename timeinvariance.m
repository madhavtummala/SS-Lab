function out = timeinvariance(q)

tmin = -10;
tmax = 10;
dt = 1;
out = 'Time Invariant';
syms T;

if(q==1)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = heaviside(x2(T-c));
        eval1 = subs(out1,T,t);
        out2 = heaviside(x2(T));
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;
        end
    end
end

if(q==2)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = x2(T-5-c)-x2(3-T-c);
        eval1 = subs(out1,T,t);
        out2 = x2(T-5)-x2(3-T);
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;
        end
    end
end

if(q==3)
    c = randi(10);
    for t = tmin:dt:tmax
        if(x2(t-1-c)~=0)
        out1 = x2(T-c)/x2(T-1-c);
        eval1 = subs(out1,T,t);
        out2 = x2(T)/x2(T-1);
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time Invariant';
            break;
        end
        end
    end
end

if(q==4)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = x2(T/2-c);
        eval1 = subs(out1,T,t);
        out2 = x2(T/2);
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;
        end
    end
end

if(q==5)
    w=2;
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = x1(T-c)*cos(w*t);
        eval1 = subs(out1,T,t);
        out2 = x2(T)*cos(w*T);
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end

if(q==6)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = int(x2(T-c),-Inf,T);
        eval1 = subs(out1,T,t);        
        out2 = int(x2(T),-Inf,T);
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end

if(q==7)
    n=randi(10);
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = x2(T-c).^n;
        eval1 = subs(out1,T,t); 
        out2 = x2(T).^n;
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end

if(q==8)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = exp(x2(T-c));
        eval1 = subs(out1,T,t);
        out2 = exp(x2(T));
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end

if(q==9)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = diff(x2(T-c));
        eval1 = subs(out1,T,t);        
        out2 = diff(x2(T));
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end


if(q==10)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = diff(x2(T-1-c));
        eval1 = subs(out1,T,t);        
        out2 = diff(x2(T-1));
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end

if(q==11)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = x2(T-c)*diff(x2(T-c));
        eval1 = subs(out1,T,t);        
        out2 = x2(T)*diff(x2(T));
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end

if(q==12)
    c = randi(10);
    for t = tmin:dt:tmax
        out1 = x2(T-1-c)*diff(x2(T-1-c));
        eval1 = subs(out1,T,t);        
        out2 = x2(T-1)*diff(x2(T-1));
        eval2 = subs(out2,T,t-c);
        if(eval1 ~= eval2)
            out = 'Time variant';
            break;           
        end
    end
end
    