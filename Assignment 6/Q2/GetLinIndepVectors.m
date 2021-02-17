function B = GetLinIndepVectors(A)
    [r c] = size(A);
    if size(A) == [0 0]
        disp('A is empty')
    else
        C= rref(A);
        B = [];
        for i=1:c
            if C(i,i) == 1
                B = [B A(:,i)]
            end
    end
end
