function [res, paras] = Schneidewind_predict(in)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
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