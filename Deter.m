function det=Deter(Matrix,n)
det=0;
    if(n==1)
        det=Matrix(1,1);
    
    else
        for i = 1:n
            for j = 2:n
                for k = 1:i-1
                    subMatrix(k,j-1)=Matrix(k,j);
                end
                
                for k = i+1:n
                    subMatrix(k-1,j-1)=Matrix(k,j);
                end
            end
            
            if(mod(i,2)==0)
                det=det-Matrix(i,1)*Deter(subMatrix,n-1);
            else
                det=det+Matrix(i,1)*Deter(subMatrix,n-1);
            end
        end  
    end
end