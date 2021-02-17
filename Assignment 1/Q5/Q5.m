clc;
clear all;
close all;

n = 8 %input('Input number of iterations:')
a = cell(1,n);
a{1} = [0 1];
for j = 2:n
    %a{j} = linspace(0, (1/3)^(j-1),2^(j));
    tmp1 = a{j-1};
    tmp2 = [];
    i = 1;
    while(i<=length(tmp1))
        tmp2 = [tmp2, tmp1(i):(1/3)^(j-1):tmp1(i+1)];
        i = i+2;
    end
    a{j} = tmp2;
end
m = n;
for j = 1:n
    b = a{j};
    l = ones(1, length(b)) *m;
    plot(b, l, 'ro'),
    hold on
    m = m-1;
end
xlim([-0.1 1.1]), ylim([0 n+1])
grid;
return;
