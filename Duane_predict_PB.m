function [res, paras] = Duane_predict_PB(in,B)
%GETPARASJM 此处显示有关此函数的摘要
%   in: time to failure
%   B: Bootstrap iterations
%   res: non-parametric Bootstrap samples
n = length(in);
paras = Duane_getParas_PB(in,B);
res = zeros(1,n);
alpha = paras(1);
beta = paras(2);
res(1) = in(1);
for i=2:n
    tn = in(i-1);
    res(i) = res(i-1) + tn / ((i-1)*beta);
end
end