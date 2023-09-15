function [res, paras] = GO_predict(in)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
[uttf, ucount] = ttf2uttf(in);
paras = GO(uttf, ucount);
res = zeros(1,n);
N0 = paras(2);
phi = paras(1);
tn = 0;
res(1) = 1/(N0*phi*exp(-phi*tn));
for i=2:n
    tn = in(i-1);
    res(i) = res(i-1) + 1/(N0*phi*exp(-phi*tn));
end
end