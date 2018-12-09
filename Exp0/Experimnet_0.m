Matrix=[1 7 3; 2 9 12; 5 22 7];
n=3;

detr=Deter(Matrix,n);
disp('Determinant=');
disp(detr);

ei=eye(n,n);

Sx=charpoly(Matrix);
disp('Eigen Values:');
x=roots(Sx);
disp(x);
disp('Eigen Vectors:');

for i = 1:n
    A=Matrix-ei*x(i);
    disp(-null(A));
end












    
