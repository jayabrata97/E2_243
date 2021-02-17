function [Px,Py] = Marginal(P)
Px = [];
Py = [];
for i = 1:length(P)
   Px(i) = 0;
   for j = 1:length(P)   
       Px(i) = Px(i) + P(i,j);
   end    
end
disp('Px is:')
Px;
for j = 1:length(P)
   Py(j) = 0;
   for i = 1:length(P)
      Py(j) = Py(j) + P(i,j); 
   end    
end
disp('Py is:')
Py;

end