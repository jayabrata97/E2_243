function y = IsLinearCombination(A,x)
 if size(A) == [0 0]
     y=0;
     disp('A is empty')
 elseif size(x) == [0 0]
     y=0;
     disp('x is empty')
 elseif size(A(:,1)) ~= size(x)
     y=0;
     disp('dimension mismatches')
 else    
    Aum = [A,x]
    Rank_Aum = rank(Aum)
    r_A = rank(A)
    if (Rank_Aum-r_A) < 0.0001
        y = 1
        disp('1: x is linear combination of given vectors.')
    else
        y = 0
        disp('0: x is not linear combination of given vectors.') 
    end
 end
end
