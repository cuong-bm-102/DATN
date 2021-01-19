A = [2 2;2 2];
I = eye(2);
N=input('Nhap N');
xn=[5 5];
z=[0 0];
for i=1:N
    J1=[1 0; 0 1]; 
    x=xn;
    for k=1:i
        r = 1/(k+2);
        J=[(1+2*r)/(4*r+1) -2*r/(4*r+1); -2*r/(4*r+1) (1+2*r)/(4*r+1)];
        J1=J1*J;
    end;
     t = 1/(i+2);
     F= 2*(x-1);
     xn= (J1*(x-(t*F))')';
     err = norm(xn-z);
end;
'giai thuc'
    J1
'Nghiem xap xi la'
    xn
'Sai so'
    err