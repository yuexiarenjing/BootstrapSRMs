function [result] = LVFun(input_sample, p)
%JMFUN 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(input_sample);
beta0 = p(1);
beta1 = p(2);
alpha = p(3);
F = 0;
for i=1:n
   F = F +  power(input_sample(i) - (beta0 + beta1 * i) / (alpha - 1), 2);
end
result = F;
end

