clear all; close all; clc;
A = randn(2,2)
x1 = randn(2,1)
N = 100;
x = [];
z = [];
x(:,1) = x1;
for i=2:N
    x(:,i) = A*x(:,i-1)./norm(A*x(:,i-1));
    z(:,i) = norm(x(:,i)-x(:,i-1));
end
t=1:N;
bar(t,z)
grid;
xlabel('No of iteration,n')
ylabel('Ratio,z')
e=eig(A) %this gives eigen values of a matrix
[V,D]=eig(A) % V gives right eigen vectors and D gives diagonal matrix corresponding to A
