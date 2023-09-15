function [result] = SchneidewindFun(input_sample, p)
%JMFUN 此处显示有关此函数的摘要
%   此处显示详细说明
N = length(input_sample);
n = input_sample(N);
left = 1 / (power(exp(1), p) - 1) - n / (power(exp(1), p * n) - 1);
right = 0;
for i=1:N
    right = right + input_sample(i) - 1;
end
COUNT = length(input_sample)-length(unique(input_sample));
right = right + COUNT;
right = right / N;
result = power(left - right, 2);
end

