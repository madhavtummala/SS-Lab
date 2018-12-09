function convo = disc_convo(x,h)

m = size(x);
n = size(h);
k = m(2)+n(2)-1;

convo = zeros(k);

for i = 1:k
    for j = 1:m(2)
        if(i-j+1>0 && i-j+1<=n(2)) 
            convo(i)=convo(i)+x(j)*h(i-j+1);
        end
    end
end
end
