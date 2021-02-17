function y=CheckIndep(P,X,Y)
[Px,Py] = Marginal(P);
M = zeros(length(P));
flag = 1;
for i=1:length(P)
   for j=1:length(P)
      if (P(i,j)-Px(i)*Py(j))>0.001
          flag = 0;
      end    
   end    
end    
if (flag==1)
    disp('X and Y are independent.')
else 
    disp('X and Y are not independent.')
end
end