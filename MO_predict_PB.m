function [res, paras] = MO_predict_PB(in,B)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   in: time to failure
%   B: Bootstrap iterations
%   res: non-parametric Bootstrap samples
n = length(in);
paras = MO_getParas_PB(in,B);
res = zeros(1,n);
beta0 = paras(1);
beta1 = paras(2);
res(1) = 1/(beta1*(beta0-1));
for i=2:n
    tn = in(i-1);
    res(i) = res(i-1) + (beta1*tn+1)/(beta1*(beta0-1));
end
end