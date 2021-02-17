function sum = CheckDist(P)
sum = 0;
for i =1:5
    for j =1:5
        sum = sum + P(i,j);
    end
end
if (sum-1)< 0.001
    disp('P is a valid joint distribution');
else
    disp('P is not a joint distribution');
end    
end
