function [minl,maxl,flag]=Check(str)
str=upper(str);
str=char(str);
letvec=isletter(str);
letter=str(letvec==1);
numerics=abs(letter);
temp=minmax(numerics);
minl=temp(1);
maxl=temp(2);
flag=1;
end