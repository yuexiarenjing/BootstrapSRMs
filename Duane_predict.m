function [res, paras] = Duane_predict(in)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
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