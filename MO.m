function [parameters] = MO(input_sample)
%JM 此处显示有关此函数的摘要
%   此处显示详细说明
n=length(input_sample);
parameter = 0.1;
[parameters,~,exitflag] = fminsearch(@(p) MOFun(input_sample, p), parameter);
if exitflag~=1
   parameters = -1; 
end
tn = input_sample(n);
beta1 = parameters;
beta0 = n / (log(1+beta1*tn));
parameters = [beta0 beta1];
end

