% Question 2: Plotting the functions
clc;
clear all;
close all;
 
t = -10:0.01:10;
T = 5;
y1 = funct2(t,T);
plot(t,y1);
title('PLot for R(t)')
xlabel('t');
ylabel('R(t)')

y2 = funct2(t+T,T)-funct2(t-T,T);
plot(t,y2);
title('Plot for shifted R(t)')
xlabel('t')
ylabel('R(t)')