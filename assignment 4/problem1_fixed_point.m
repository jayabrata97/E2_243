clc
p=input('Enter a initial value p between 0 and 1 : ');
N=input('Enter limiting number of iterations: ');
E=input('Enter permissible error Epsilon: ');
x1=p;
c=1;
for n=1:N
    x2=fun(x1);
    if (x2>1||x2<0)||(x1>1||x1<0)
        fprintf("Error!!")
        c=0;
        break;
    end
  if abs(x2-x1)<E
         x1=x2;
         break;
  else
      x1=x2;
    end
end
if c==1
fprintf('The result is = %f \n',x1);
end
        