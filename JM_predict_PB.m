function [res, paras] = JM_predict_PB(in,B)
%GETPARASJM 此处显示有关此函数的摘要
%   in: time to failure
%   B: Bootstrap iterations
%   res: non-parametric Bootstrap samples
n = length(in);
paras = JM_getParas_PB(in,B);
res = zeros(1,n);
N0 = paras(1);
phi = paras(2);
res(1) = 1 / (phi*N0);
for i=2:n
    res(i) = res(i-1) + 1 / (phi*(N0-i+1));
end
end