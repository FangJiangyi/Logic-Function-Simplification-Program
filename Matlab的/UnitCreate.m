function [Matrix]=UnitCreate(Matrix,s)
[m,~]=size(Matrix);
 if isempty(s)
     return;
 end
temp=count(s,"1")+1;
    
    if m==0
        Matrix=cell([temp 1]);
        for i=1:temp
            Matrix{i,1}=1;
        end
    elseif temp>m
        for i=m+1:temp
            Matrix{i,1}=1;
        end
    elseif isempty(Matrix{temp,1})
         Matrix{temp,1}=1;
    end
    Matrix{temp,1}=Matrix{temp,1}+1;
    order=Matrix{temp,1};
    Matrix{temp,order}=s;
end