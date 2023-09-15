function [result] = MOFun(input_sample, p)
%JMFUN 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(input_sample);
sum = 0;
tn = input_sample(n);
for i=1:n
    sum = sum + 1 / ( 1+p*input_sample(i) );
end
result = power(sum*(1+p*tn)*log(1+p*tn) - p*n*tn, 2);
end

