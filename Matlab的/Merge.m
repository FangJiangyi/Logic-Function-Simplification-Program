function [Matrix_After_Merge,record,mergenums]=Merge(Matrix)
Matrix_After_Merge={};
temp={};
t=0;
    [m,~]=size(Matrix);
    for i=1:m-1
        if Matrix{i,1}<2
            continue
        elseif Matrix{i+1,1}<2
            continue
        else
            for j=2:Matrix{i,1}
                s1=Matrix{i,j};
                s1=char(s1);
                for k=2:Matrix{i+1,1}
                    s2=Matrix{i+1,k};
                    s2=char(s2);
                    sm=UnitMerge(s1,s2);
                    if isempty(sm)
                        continue
                    else
                           Matrix_After_Merge=UnitCreate(Matrix_After_Merge,sm);
                           t=t+1;
                           temp{t,1}=[i j];
                           temp{t,2}=[i+1 k];
                    end
               end
            end
        end            
    end
    [mergenums,~]=size(temp);
    Matrix_After_Merge=QuChong(Matrix_After_Merge);
    [m,n]=size(Matrix);
    o=[ones(m,1),zeros(m,n-1)];
    for i=1:m
        for j=1:n
            if isempty(Matrix{i,j})
                o(i,j)=1;
            end
        end
    end
    
    [m,~]=size(temp);
    for i=1:m
        o(temp{i,1}(1),temp{i,1}(2))=1;
        o(temp{i,2}(1),temp{i,2}(2))=1;
    end
    [x,y]=find(o==0);
    record=[x,y];
end