function X = x(W,n)
X=[]
for i=1:length(W)
    if W(i)<=(1/n)
        X(i)=-n*W(i)+1
    else if W(i)>(1/n)&& W(i)<(1-(1/n))
            X(i)=0
        else
           W(i)>1-(1/n)
           X(i)=n*(W(i)-1)+1
        end
    end
end
plot(W,X);
hold on
end
        