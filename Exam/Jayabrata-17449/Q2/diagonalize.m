function [P,D,P_inverse]=diagonalize(A)
[P,D]=eig(A);
P_inverse=inv(P);
Check=P*D*P_inverse
%tf=isequal(A,Check)
flag=0;
for i=1:3
    for j=1:3
        if abs(A(i,j)-Check(i,j))>0.0001
           flag=flag+1;    
        end
    end
end
if (flag-0)<0.0001
    disp('Condition satisfied')
else
    disp('Condition not satisfied')
end
end