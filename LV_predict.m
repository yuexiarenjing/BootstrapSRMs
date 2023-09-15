function [res, paras] = LV_predict(in)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
paras = LV(in);
res = zeros(1,n);
beta0 = paras(1);
beta1 = paras(2);
alpha = paras(3);
res(1) = beta0/(alpha-1);
for i=2:n
    res(i) = res(i-1) + (beta0 + beta1*(i-1)) / (alpha-1);
end
end