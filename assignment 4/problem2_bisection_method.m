clc
a=input('enter a number:  ')
b=input('enter another number:  ')
E=input('enter permissible error:  ')
N=input('enter maximum numner of iterations:  ')

 if sign(myfunc(a))==sign(myfunc(b))
    fprintf('Error!!Both signs are same');
   
else
    for n=1:N
        if abs(b-a)<E
            c=(a+b)/2;
            break;
        end
        c=(a+b)/2;
        if myfunc(c)==0
            break;
        elseif sign(myfunc(a))==sign(myfunc(c))
            a=c;
        elseif sign(myfunc(b))==sign(myfunc(c))
            b=c;
        end
    end
        root=c;
        fprintf('an= %f ,bn= %f\n',a,b);
        fprintf('The root of the equation is =%f\n' ,root);
 end
    
        
            
       
   
