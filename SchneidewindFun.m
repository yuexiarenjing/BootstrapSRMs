function [result] = SchneidewindFun(input_sample, p)
%JMFUN �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
N = length(input_sample);
n = input_sample(N);
left = 1 / (power(exp(1), p) - 1) - n / (power(exp(1), p * n) - 1);
right = 0;
for i=1:N
    right = right + input_sample(i) - 1;
end
COUNT = length(input_sample)-length(unique(input_sample));
right = right + COUNT;
right = right / N;
result = power(left - right, 2);
end

