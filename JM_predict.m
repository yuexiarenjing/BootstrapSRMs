function [res, paras] = JM_predict(in)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
paras = JM(in);
res = zeros(1,n);
N0 = paras(1);
phi = paras(2);
res(1) = 1 / (phi*N0);
for i=2:n
    res(i) = res(i-1) + 1 / (phi*(N0-i+1));
end
end