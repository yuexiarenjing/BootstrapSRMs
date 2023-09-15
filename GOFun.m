function [result] = GOFun(time_sample, number_sample, p)
%JMFUN �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(time_sample);
left = (number_sample(n) / (1 - power(exp(1), (-1) * p * time_sample(n)))) * time_sample(n) * power(exp(1), (-1) * p * time_sample(n));
right = 0;
right = right + (number_sample(1) - 0) * (time_sample(1) * power(exp(1), (-1) * p * time_sample(1)) / (1 - power(exp(1), (-1) * p * time_sample(1))));
for i=1:n-1
    right = right + (number_sample(1) - number_sample(i)) * ...
					 (time_sample(i+1) * power(exp(1), (-1) * p * time_sample(i+1)) - ...
							 time_sample(i) * power(exp(1), (-1) * p * time_sample(i))) / ...
					  (power(exp(1), (-1) * p * time_sample(i)) - ...
					   power(exp(1), (-1) * p * time_sample(i+1)));
end
result = power(left-right, 2);
end

