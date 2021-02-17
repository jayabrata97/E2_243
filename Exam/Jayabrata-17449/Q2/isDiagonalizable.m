function d=isDiagonalizable(A)
o=findGM(A);
if (o-3)<0.0001
    d=1
    disp('A is diagonalizable')
else
    d=0
    disp('A is not diagonalizable')
end
end