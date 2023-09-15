function [res, paras] = Duane_predict(in)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
paras = Duane(in);
res = zeros(1,n);
alpha = paras(1);
beta = paras(2);
res(1) = in(1);
for i=2:n
    tn = in(i-1);
    res(i) = res(i-1) + tn / ((i-1)*beta);
end
end