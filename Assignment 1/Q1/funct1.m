% Function definition for Q1
function y = funct1(t)
y = zeros(1,length(t));
    for i=1:length(t)
        
        if((t(i) >= -1) && (t(i) <= 0))
            y(i) = -4* t(i) + 2;
        elseif((t(i)>0) && (t(i)<=2))
            y(i) = 3*t(i)+2;
        else
            y(i) = 0;
        end
    end
end

