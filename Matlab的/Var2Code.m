function [everyx_bin]=Var2Code(everyx_var,minl,maxl)
l=length(everyx_var);
everyx_bin=ones(l,maxl-minl+1);
everyx_bin=everyx_bin*abs('-');
everyx_bin=char(everyx_bin);
for i=1:l  
    s=everyx_var{i};
    s=convertStringsToChars(s);
    for j=1:length(s)
        if j==length(s)
            if isletter(s(j))==1
                everyx_bin(i,abs(s(j))-minl+1)='1';
            end
        elseif isletter(s(j))==1
            if isletter(s(j+1))==1
                everyx_bin(i,abs(s(j))-minl+1)='1';
            else
                everyx_bin(i,abs(s(j))-minl+1)='0';
            end
        end
    end
end

end