clear all;close all;clc;
a=2.5;
b=4;
N=10;
a1=[];
b1=[];
if sign(func1c(a))==sign(func1c(b))
    fprintf('Error!!Both signs are same')
else
    for n=1:N
        c=(a+b)/2;
        if func1c(c)==0
            break;
        elseif sign(func1c(a))==sign(func1c(c))
            a=c;
        elseif sign(func1c(b))==sign(func1c(c))
            b=c;
        end
        a1(n)=a
        b1(n)=b
    end
        root=c;
        fprintf('an= %f ,bn= %f\n',a,b);
        fprintf('The root of the equation is =%f\n' ,root);
 end