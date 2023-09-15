function [parameters] = LV(input_sample)
%JM 此处显示有关此函数的摘要
%   此处显示详细说明
n=length(input_sample);
parameter = [1,1,1];
tbf = ttf2tbf(input_sample);
[parameters,~,exitflag] = fminsearch(@(p) LVFun(tbf, p), parameter);
if exitflag~=1
   parameters = -1;
   return; 
end
end

