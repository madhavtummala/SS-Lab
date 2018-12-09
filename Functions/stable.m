function out = stable(q)

syms t T;

if(q==1)
    Px = limit(int(heaviside(x2(t)),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==2)
    Px = limit(int(x2(t-5)-x2(3-t),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==3)
%     Px = limit(int(r_new(t),-t/2,t/2)/t,t,Inf)
%     if(Px == Inf && Px == -Inf)
%         out = 'Not BIBO Stable';
%     else
        out = 'BIBO Stable';
%     end
end

if(q==4)
    Px = limit(int(x2(t/2),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==5)
    w = 2;
    Px = limit(int(x2(t)*cos(w*t),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==6)
    Px = limit(int(limit(int(x2(T),-Inf,T),T,t),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==7)
    n = 2;
    Px = limit(int(x2(t)^n,-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==8)
    Px = limit(int(exp(x2(t)),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==9)
    Px = limit(int(subs(diff(x2(T)),T,t),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==10)
    Px = limit(int(subs(diff(x2(T-1)),T,t),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==11)
    Px = limit(int(subs(x2(T)*diff(x2(T)),T,t),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end

if(q==12)
    Px = limit(int(subs(x2(T-1)*diff(x2(T-1)),T,t),-t/2,t/2)/t,t,Inf);
    if(Px == Inf && Px == -Inf)
        out = 'Not BIBO Stable';
    else
        out = 'BIBO Stable';
    end
end
end

        