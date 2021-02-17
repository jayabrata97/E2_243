function [eval,mul] = findAM(A)
eval=eig(A)
a=size(eval);
Sort = sort(eval);
disp('unique eigen values are:')
uni = unique(Sort)
num=0;
mul=[];
if size(Sort)==size(uni)
    disp('All eigen values have algabraic multiplicity of 1')
else
    disp('all eval are not of algabraic multiplicity of 1')
    for i=1:3
       num=0; 
       if abs(Sort(i,:)-uni(i,:))<0.001
           num =num+1;
       end    
       mul=[mul num]
    end
    disp('multiplicities are as above as sorted eigen values.')
end    
end
