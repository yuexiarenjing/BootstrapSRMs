function [parameters] = Duane(in)
%DUANE 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
sum=0;
for i=1:(n-1)
    sum = sum + log(in(n) / in(i));
end
beta = n / sum;
alpha =n / (power(in(n), beta));
parameters = [alpha beta];
end

