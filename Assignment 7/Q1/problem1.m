clear all;close all;clc;
W=0:0.01:1
n=input ( 'Enter a number :')
B=[1/n 1-(1/n)]
W=horzcat(W,B)
W=sort(W)
X=x(W,n)
step_size=1/(length(X)+1)
A=0:step_size:1
cdf=F(X,n)
%figure()
subplot(2,1,1)
plot(W,X);
title('Random variable')
xlabel('w')
ylabel('random variable X')
hold on
subplot(2,1,2)
 plot(A,cdf);
 title('Cumulative Distribution Function')
xlabel('Random Variable X')
ylabel('CDF(F)')
hold on
subplot(2,1,1)


   
