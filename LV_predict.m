function [res, paras] = LV_predict(in)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
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