function sm=UnitMerge(s1,s2)
    judge=s1==s2;
    c=find(judge==0);
    if length(c)>1
        sm=[];
    else
        sm=s1;
        sm(c)='-';
    end
    sm=string(sm);
end