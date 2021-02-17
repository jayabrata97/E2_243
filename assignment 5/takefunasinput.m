close all;
syms x
str=input('Input your function','s')
str1='@(x)'
str=strcat(str1,str)
f=str2func(str)
k=input('order of differentiation')
f1 = matlabFunction( diff(f(x),k) )

