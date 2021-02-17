function var = Variance(Scores)
var = 0;
val = 0;
for i = 1:30
    val = val + (Scores(i) - Average(Scores)).^2;
    var = val / 30;
end