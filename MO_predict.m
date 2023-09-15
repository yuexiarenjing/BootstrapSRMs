function [res, paras] = MO_predict(in)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
paras = MO(in);
res = zeros(1,n);
beta0 = paras(1);
beta1 = paras(2);
res(1) = 1/(beta1*(beta0-1));
for i=2:n
    tn = in(i-1);
    res(i) = res(i-1) + (beta1*tn+1)/(beta1*(beta0-1));
end
end