clc;clear all;close all;
% INPUT
z=0.12+.5j
N=15
S=zeros(N,1);
S(1)=z;
epsilon=0.0001
for i=2:10
    if abs(z)>1
    disp('Series does not converge')
    break 
    end 
    if ((abs(z)^(i+1))/(1-abs(z)))<= epsilon
        continue
      
      if ((abs(z)^(i+1))/(1-abs(z)))> epsilon
          disp(i)
          
          break
      end
    end
    
  S(i)=z^(i)+S(i-1);
  disp(S)      
end
disp(i)
disp(S)

  
      
    