function [xs,everyx_var]=process(strc)
strs=string(strc);
everyx_var=split(strs,'+');
xs=length(everyx_var);
end