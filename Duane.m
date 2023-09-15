function [parameters] = Duane(in)
%DUANE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
sum=0;
for i=1:(n-1)
    sum = sum + log(in(n) / in(i));
end
beta = n / sum;
alpha =n / (power(in(n), beta));
parameters = [alpha beta];
end

