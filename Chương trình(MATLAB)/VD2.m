N=input('Nhap N');
xn=[4 5 2 -6 4];
z=[1 0 0 0 0];
for i=1:N
    J1=eye(5); 
    x=xn;
    A=[0 0 0 0 0;0 1 1 0 0;0 -1 1 0 0 ;0 0 0 1 1;0 0 0 0 1];
    I= eye(5);
    for k=1:i
        r = 1/(k+2);
        J= inv(I+r*A);
        J1=J1*J;
    end;
     t = 1/(i+6);
     mu= [1/10^(i) 1/10^(i) 1/10^(i) 1/10^(i) 1/10^(i)];    
     F = [6*x(1)-6 6*x(2)+2 6*x(3) 6*x(4)+1 6*x(5)+5];
     xn= (J1*((x-(t*F)+mu))')';
     err = norm(xn-z);
end;
'giai thuc'
 J1
'Nghiem xap xi la'
 xn
 err