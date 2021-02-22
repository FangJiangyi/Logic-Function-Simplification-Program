function Matrix_for_one=CreateMatrix(BicodeMatrix)
Matrix_for_one={};
[m,n]=size(BicodeMatrix);
count1=0;
    for i=1:m
        s=BicodeMatrix(i,:);
        counttemp=0;
        for j=1:n
            if s(j)=='1'
                counttemp=counttemp+1;
            elseif s(j)=='-'
                counttemp=counttemp+1;
            end
        end
        if counttemp>count1
            count1=counttemp;
        end
    end
    for i=1:m
        s=BicodeMatrix(i,:);
        A=[];
        top=0;
        [A,top]=ChangeMatrix(A,s,top);
        A=string(char(A));
        for j=1:length(A)
          Matrix_for_one= UnitCreate(Matrix_for_one,A(j));
        end
    end
    
end
