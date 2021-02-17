clc;
clear all;
close all;

%Plot f(t)
t = -20:0.01:20;
y1 = exp(-1*abs(t));
plot(t,y1);
grid;
title('Plot of f(t)')
xlabel('t')
ylabel('f(t)')
