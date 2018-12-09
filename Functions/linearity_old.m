function out = linearity_old(q)

tmin = -10;
tmax = 10;
dt = 1;
out = 'Linear';
c = 2;

if(q==1)
    for t = tmin:dt:tmax
        out1 = u(x1(t));
        out2 = u(x2(t));
        out3 = u(x1(t)+x2(t));
        out4 = u(c*x2(t));
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==2)
    for t = tmin:dt:tmax
        out1 = x1(t-5) + x1(3-t);
        out2 = x2(t-5) + x2(3-t);
        out3 = x1(t-5) + x1(3-t) + x2(t-5) + x2(3-t);
        out4 = c*x2(t-5) + c*x2(3-t);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==3)
    for t = tmin:dt:tmax
        out1 = x1(t)/x1(t-1);
        out2 = x2(t)/x2(t-1);
        out3 = (x1(t)+x2(t))/(x1(t-1)+x2(t-1));
        out4 = x2(t)/x2(t-1);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==4)
    for t = tmin:dt:tmax
        out1 = x1(t/2);
        out2 = x2(t/2);
        out3 = x1(t/2)+x2(t/2);
        out4 = c*x2(t/2);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==5)
    w=2;
    for t = tmin:dt:tmax
        out1 = x1(t)*cos(w*t);
        out2 = x2(t)*cos(w*t);
        out3 = (x1(t)+x2(t))*cos(w*t);
        out4 = c*x2(t)*cos(w*t);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;           
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==6)
    syms T;
    for t = tmin:dt:tmax
        out1 = limit(int(x1(T),-Inf,T),T,t);
        out2 = limit(int(x2(T),-Inf,T),T,t);
        out3 = limit(int(x1(T) + x2(T),-Inf,T),T,t);
        out4 = limit(int(c*x2(T),-Inf,T),T,t);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;
        else if(out4 ~= out2*c)
             out = 'Not Linear';
             break;
            end
        end
    end
end

if(q==7)
    n=2;
    for t = tmin:dt:tmax
        out1 = x1(t).^n;
        out2 = x2(t).^n;
        out3 = (x1(t)+x2(t)).^n;
        out4 = c*x2(t).^n;
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;           
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==8)
    for t = tmin:dt:tmax
        out1 = exp(x1(t));
        out2 = exp(x2(t));
        out3 = exp(x1(t)+x2(t));
        out4 = exp(c*x2(t));
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;           
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==9)
    syms T;
    for t = tmin:dt:tmax
        out1 = subs(diff(x1(T)),T,t);
        out2 = subs(diff(x2(T)),T,t);
        out3 = subs(diff(x1(T)+x2(T)),T,t);
        out4 = subs(diff(c*x2(T)),T,t);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;           
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end


if(q==10)
    syms T;
    for t = tmin:dt:tmax
        out1 = subs(diff(x1(T-1)),T,t);
        out2 = subs(diff(x2(T-1)),T,t);
        out3 = subs(diff(x1(T-1)+x2(T-1)),T,t);
        out4 = subs(diff(c*x2(T)),T,t);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;           
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==11)
    syms T;
    for t = tmin:dt:tmax
        out1 = subs(x1(T)*diff(x1(T)),T,t);
        out2 = subs(x2(T)*diff(x2(T)),T,t);
        out3 = subs((x1(T)+x2(T))*diff(x1(T)+x2(T)),T,t);
        out4 = subs(c*x2(T)*diff(c*x2(T)),T,t);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;           
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end

if(q==12)
    syms T;
    for t = tmin:dt:tmax
        out1 = subs(x1(T-1)*diff(x1(T-1)),T,t);
        out2 = subs(x2(T-1)*diff(x2(T-1)),T,t);
        out3 = subs((x1(T-1)+x2(T-1))*diff(x1(T-1)+x2(T-1)),T,t);
        out4 = subs(c*x2(T-1)*diff(c*x2(T-1)),T,t);
        if(out3 ~= out1+out2)
            out = 'Not linear';
            break;           
        else if(out4 ~= out2*c)
                out = 'Not Linear';
                break;
            end
        end
    end
end
    