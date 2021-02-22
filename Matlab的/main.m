clc;
close;
clear all;
%≥ı ºªØ
flag=0;
t=0;
%****************************************************************
varstr=myinput();
[minl,maxl,~]=Check(varstr);
[~,everyx_var]=process(varstr);
[everyx_bin]=Var2Code(everyx_var,minl,maxl);
Matrix=CreateMatrix(everyx_bin);
[m,~]=size(Matrix);
for i=1:m
    if Matrix{i,1}<2
        continue
    end
    for j=2:Matrix{i,1}
        if ~isempty(Matrix{i,j})
            t=t+1;
            temp_Matrix(t,:)=char(Matrix{i,j});
        end
    end
end
t=0;
[Matrix_,record,mergenums]=Merge(Matrix);
[m,~]=size(record);
if m~=0
    for i=1:m
        t=t+1;
        s=Matrix{record(i,1),record(i,2)};
        s=char(s);
        least(t,:)=s;
        flag=1;
    end
end
while mergenums~=0
    if flag~=1
        [m,~]=size(record);
        if m~=0
            for i=1:m
                t=t+1;
                s=Matrix{record(i,1),record(i,2)};
                s=char(s);
                least(t,:)=s;
            end
        end
    else
        flag=flag+1;
    end
        Matrix=Matrix_;
        [Matrix_,record,mergenums]=Merge(Matrix);
end
[m,~]=size(record);
if m~=0
    for i=1:m
        t=t+1;
        s=Matrix{record(i,1),record(i,2)};
        s=char(s);
        least(t,:)=s;
    end
end
table=JudgeInclude(least,temp_Matrix);
Loc=[];
Loc=XiangLeast(table,Loc,1:t);
outstr=Code2Var(least(Loc,:),minl);
disp(outstr);