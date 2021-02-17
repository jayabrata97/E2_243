clear ll;close all;clc;
str=input('Input your function','s')
str1='@(x)'
str=strcat(str1,str)
f=str2func(str)
syms x
a=input('Input the centre point')
ep=input('Input the epsilon')
taylor=[];
desired=[];
index1=1;
n=1;


T=f(a);
indicator=1;
for var1=a-1:0.1:a+1
    desired(index1)=f(var1);
    index1=index1+1;
end
plot(var,desired)
hold on

while (indicator>0)
    index=1;error=0;
    for y=a-1:0.1:a+1
    sum=0;
    for k=1:n
       f1 = matlabFunction( diff(f(x),k) )
       kfact=myfactorial(k)
       sum=sum+((f1(a))/kfact)*(y-a)^k
    end
    result=T+sum;
    taylor(index)=result;
    E=abs(taylor(index)-desired(index))
    index=index+1;
    if error<E
        error=E;
    end
    end
    if error > ep
        indicator =1
        n=n+1
    elseif error < ep
        indicator=0
    end
        
end
NE=n
var=a-1:0.1:a+1
plot(var,taylor)
hold on

