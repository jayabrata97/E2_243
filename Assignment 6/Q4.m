clear all;close all;clc;
x = [1 1 1]';
y = [1 2 3]';
z = [2 9 -1]';
w = [3 2 5]';
A = [x y];
r = rank(A)
v = rand(1)*x + rand(1)*z
t = rank([A v])
B = [x y w z]
r = rank(B)