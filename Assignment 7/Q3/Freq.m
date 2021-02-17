function frequency = Freq(array, x)
frequency = 0;
for i = 1:30
    if array(i) == x
        frequency = frequency + 1;
    end
end    
end