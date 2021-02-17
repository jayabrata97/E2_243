clc;
clear all;
close all;

% Plot f(t)
t = -10:0.01:10;
%t
y1 = funct1(t);
subplot(5,1,1);
plot(t,y1);
title('Plot for f(t)')
xlabel('t')
ylabel('f(t)')

% Plot g(t) = f(t+2)
t = -10:0.01:10;
y2 = funct1(t+2);
subplot(5,1,2);
plot(t,y2);
title('Plot for f(t+2)')
xlabel('t')
ylabel('f(t+2)')

% Plot g(t) = f(t*5/4)
t = -10:0.01:10;
y3 = funct1(t*5/4);
subplot(5,1,3);
plot(t,y3);
title('Plot for f(t*5/4)')
xlabel('t')
ylabel('f(t*5/4)')

% Plot g(t) = f(2*t-4)
t = -10:0.01:10;
y4 = funct1(2*t-4);
subplot(5,1,4);
plot(t,y4);
title('Plot for f(2*t-4)')
xlabel('t')
ylabel('f(2*t-4)')

% Plot g(t) = f(2-t)
t = -10:0.01:10;
y5 = funct1(2-t);
subplot(5,1,5);
plot(t,y5);
title('Plot for f(2-t)')
xlabel('t')
ylabel('f(2-t)')
