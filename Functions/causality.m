function out = causality(q)

out = 'Causal';
syms T;
t=0;

if(q==1)
    
    out1 = heaviside(x2(t));
    out2 = heaviside(x2_1(t));
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==2)
    
    out1 = x2(t-5)-x2(3-t);
    out2 = x2_1(t-5)-x2_1(3-t);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==3)
    
    out1 = x2(t)/x2(t-1);
    out2 = x2_1(t)/x2_1(t-1);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==4)
    
    out1 = x2(t/2);
    out2 = x2_1(t/2);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==5)
    
    w = randi(10);
    out1 = x2(t)*cos(w*t);
    out2 = x2_1(t)*cos(w*t);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==6)
    
    out1 = limit(int(x2(T),-Inf,T),T,t);
    out2 = limit(int(x2_1(T),-Inf,T),T,t);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==7)
    
    n = randi(10);
    out1 = x2(t)^n;
    out2 = x2_1(t)^n;
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==8)
    
    out1 = exp(x2(t));
    out2 = exp(x2_1(t));
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==9)
    
    out1 = subs(diff(x2(T)),T,t);
    out2 = subs(diff(x2_1(T)),T,t);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==10)
    
    out1 = subs(diff(x2(T-1)),T,t);
    out2 = subs(diff(x2_1(T-1)),T,t);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==11)
    
    out1 = subs(x2(T)*diff(x2(T)),T,t);
    out2 = subs(x2_1(T)*diff(x2_1(T)),T,t);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

if(q==12)
    
    out1 = subs(x2(T-1)*diff(x2(T-1)),T,t);
    out2 = subs(x2_1(T-1)*diff(x2_1(T-1)),T,t);
    
    if(out1 ~= out2)
        out = 'Non Causal';
    end
end

end
