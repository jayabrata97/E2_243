function [cdf] = F(X,n)
step_size=1/(length(X)+1)
B=sort(X)
n1=1
for i=0:step_size:1
    count =0;
    for j=1:length(X)
        if B(j)<=i
            count=count+1
        end
    end
   cdf(n1)=count/length(X);
   n1=n1+1;
end
end

