a = '@(x) x+3';  % for defining a function handler
A = [1 2 3 4 5 6];
B = [2 3 4 5 6];
X = [1 2 3];
Y = [2 3 4];
f = str2func(a);
i = 1:1:length(A);
F(i) = f(A(i));
disp(['Range of A:', num2str(F)]);
g = finverse(sym(f));  % finverse returns the inverse value of function, 
%sym function refers to symbolic object
g1 = matlabFunction(g);  % it converts symbolic expression to matlab function

if ismember(X,A)  %  ismember() returns a logical array of logic 1 or 0
    i = 1:1:length(X);
    Image(i) = f(X(i));  %b
    disp('Image of X:');
    disp((Image));
else
    disp('X is not subset of A');
end    
    
if ismember(Y,B)
    i = 1:1:length(Y);
    Image(i) = g1(Y(i));
    disp('Image of Y:');
    disp((Image));
else
    disp('Y is not subset of B');
end

return; 