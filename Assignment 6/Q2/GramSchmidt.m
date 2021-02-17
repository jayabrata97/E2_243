function [V,Q] = GramSchmidt(A)
if size(A) == [0 0]
    disp('A is empty')
else    
    B = GetLinIndepVectors(A)
    [m,n] = size(B);
    V = zeros(m,n);
    Q = zeros(m,n);
    R = zeros(n,n);
    for j = 1:n
        v = B(:,j);
        for i = 1:j-1
           R(i,j) = Q(:,i)'*B(:,j);
           v = v - R(i,j)*Q(:,i);
        end
        V(:,j) = v
        R(j,j) = norm(v);
        Q(:,j) = v/R(j,j);
    end    
end
end