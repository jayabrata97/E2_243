str=input('Input your function','s')
str1='@(x)'
str=strcat(str1,str)
f=str2func(str)
syms x
a=input('Input the centre point')
n=input('Input the order n')
taylor=[];
desired=[];
index1=1;
index=1;
T=f(a)
for y=a-1:0.1:a+1
    sum=0;
    for k=1:n
       f1 = matlabFunction( diff(f(x),k) )
       kfact=myfactorial(k)
       sum=sum+((f1(a))/kfact)*(y-a)^k
    end
    result=T+sum;
    taylor(index)=result;
    index=index+1;
end
var=a-1:0.1:a+1
plot(var,taylor)
hold on
for var1=a-1:0.1:a+1
    desired(index1)=f(var1);
    index1=index1+1;
end
plot(var,desired)
