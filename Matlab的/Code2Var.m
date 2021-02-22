function str=Code2Var(least)
[m,n]=size(least);
t=1;
    for i=1:m
        for j=1:n
            if least(i,j)=='1'
                str(t)=65+j-1;
                t=t+1;
            elseif least(i,j)=='0'
                str(t)=65+j-1;
                str(t+1)=39;
                t=t+2;
            else
            end
        end
        if i~=m
            str(t)='+';
            t=t+1;
        end
    end
str=char(str);
end