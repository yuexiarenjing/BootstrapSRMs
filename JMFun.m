function [result] = JMFun(input_sample, p)
%JMFUN 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(input_sample);
sum1 = 0; sum2 = 0; sum3 = 0;
for i=1:n
   sum1 = sum1 + 1.0 / (p -i + 1); 
   sum2 = sum2 + input_sample(i);
   sum3 = sum3 + (i-1) * input_sample(i);
end
result = (sum1 - n / (p - 1 / sum2 * sum3)) ^ 2;
end

