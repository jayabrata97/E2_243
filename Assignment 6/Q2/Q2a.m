close all;clear all; clc;
%x1 = [1 0 0 0 0]';
%x2 = [0 1 0 0 0]';
%x3 = [1 2 0 0 7]';
%x = [3;5;3;9;8];
%A = [x1 x2 x3]
x1=[1 0 3 4]';
x2=[0 6 7 8]';
A=[x1 x2]
alpha=5;
beta=6;
x=alpha*x1+beta*x2
b=[2 0 6 8]';
%b=[2 3 1 1]';
y = IsLinearCombination(A,x)
   

