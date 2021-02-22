function Loc=XiangLeast(table,Loc,r)
if isempty(table)
    return 
else
[m,n]=size(table);
count1n=zeros(1,n);
for j=1:n
    for i=1:m
        if table(i,j)==1
            count1n(j)=count1n(j)+1;
        end
    end
end
temp=find(count1n==1);
[temp,~]=find(table(:,temp)==1);
[~,columns]=find(table(temp,:)==1);
temp=temp.';
table(temp,:)=[];
table(:,columns)=[];
Loc=[Loc,r(temp)];
r=setdiff(r,temp);
if ~isempty(table)
[~,pos]=max(sum(table.'));
Loc=[Loc,r(pos)];
[~,c]=find(table(pos,:)==1);
table(pos,:)=[];
table(:,c)=[];
end
Loc=XiangLeast(table,Loc,r);
end
end