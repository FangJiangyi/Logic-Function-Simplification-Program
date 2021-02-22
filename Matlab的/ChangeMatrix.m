function [A,size]=ChangeMatrix(A,stemp,size)
count_=0;
for i=1:length(stemp)
    if stemp(i)=='-'
        count_=count_+1;
    end
end
if count_==0
    size=size+1;
    A(size,:)=stemp;
    return
else
    B=find(stemp=='-');
    stemp(B(1))='1';
    [A,size]=ChangeMatrix(A,stemp,size);
    stemp(B(1))='0';
    [A,size]=ChangeMatrix(A,stemp,size);
end
end
