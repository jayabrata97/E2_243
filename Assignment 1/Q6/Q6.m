clear all;
close all;
clc;

n = 1 + 10^-3;
r = 10;
x1 = -n:(1/10^3):n;
x2 = -n:(1/10^3):n;
y1 = (abs(x1).^r + abs(x2).^r).^(1/r);
y = zeros(1,length(y1));
for i=1:length(y1)
    if(y1(i) <= 1)
        y(i) = 1;
    end
end
scatter3(x1,x2,y);
y2 = max(abs(x1),abs(x2));
y = zeros(1,length(y2));
for j=1:length(y2)
    if(y2(j) <= 1)
        y(j) = 1;
    end
end
scatter3(x1, x2, y);
figure;
plot(y2, y);
return;