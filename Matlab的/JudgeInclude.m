function table=JudgeInclude(sleast,everyx_bin)
[m,~]=size(sleast);
[n,l]=size(everyx_bin);
table=zeros(m,n);   
    for i=1:m
        for j=1:n
            countdiffer=0;
            for k=1:l
                if sleast(i,k)=='-'
                    continue;
                elseif sleast(i,k)~=everyx_bin(j,k)
                    countdiffer=countdiffer+1;
                end
            end
            if countdiffer==0
                 table(i,j)=1;
            end
        end
    end
end