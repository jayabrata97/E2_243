function y=funct2(t,T)

for i = 1:length(t)
    if t(i) <= T && t(i) >= -T
        y(i) = t(i)+T/(2*T);
    elseif t(i) >= T
        y(i) = 1
    else t(i) <= -T
        y(i) = 0;
    end
end
end
