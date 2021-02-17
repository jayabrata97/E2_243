function avg = Average(Scores)
sum = 0;    
for i = 1:30
    sum = sum + Scores(i);
    avg = sum / 30;
end