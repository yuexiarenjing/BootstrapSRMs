function [res,paras] = Schneidewind_predict_NPB(in,B)
%GETPARASJM 此处显示有关此函数的摘要
%   in: time to failure
%   B: Bootstrap iterations
%   res: non-parametric Bootstrap samples
n = length(in);
paras = Schneidewind_getParas_NPB(in,B);
res = zeros(1,n);
lambda0 = paras(1);
phi = paras(2);
tn = 0;
res(1) = 1/(lambda0 * exp(-phi * tn));
for i=2:n
    tn = in(i-1);
    res(i) = res(i-1) + 1/(lambda0 * exp(-phi * tn));
end
end