clear all; close all; clc;
%user defined input
x=0
x1=0.3;
Epsilon=0.001
N=10
%defining x2
x2=[]
x2(1)=x1
for n=2:N
    %checking the range of x1 and x2
    if (x2(n-1)>1||x2(n-1)<0)||(x1>1||x1<0)
        fprintf("Error!!")
        c=0;
        break;
    end
    x2(n)=2*fun1b(x2(n-1))/3+x2(n-1)/3;
    if abs(x2(n)-x2(n-1))<Epsilon
         disp('tolerance reached')
         break;
    end
end
x2
