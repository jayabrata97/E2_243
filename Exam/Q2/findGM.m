function y=findGM(A)
[V,D]=eig(A);
eval_1=D(1,1);
eval_2=D(2,2);
eval_3=D(3,3);
eval=[eval_1;eval_2;eval_3]
Uni=unique(eval)
Size=size(Uni);
a=Size(1)
if (a-3)<0.0001
    y=3
    disp('Geometric multiplicity is 3')
elseif (a-2)<0.0001
    y=2
    disp('Geometric multiplicity is 2')
else (a-1)<0.0001
    y=1
    disp('Geometric multiplicity is 1')
end
end