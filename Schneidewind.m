function [parameters] = Schneidewind(input_sample)
%JM 此处显示有关此函数的摘要
%   此处显示详细说明
N=length(input_sample);
parameter = 1;
[parameters,~,exitflag] = fminsearch(@(p) SchneidewindFun(input_sample, p), parameter);
if exitflag~=1
   parameters = -1; 
end
phi = parameters;
Fn = N;
n = input_sample(N);
lambda0 = phi * Fn / (1 - exp(-phi * n));
parameters = [lambda0 phi];
end

