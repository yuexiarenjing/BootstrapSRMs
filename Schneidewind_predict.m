function [res, paras] = Schneidewind_predict(in)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
paras = Schneidewind(in);
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