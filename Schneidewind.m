function [parameters] = Schneidewind(input_sample)
%JM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
N=length(input_sample);
parameter = 1;
[parameters,~,exitflag] = fminsearch(@(p) SchneidewindFun(input_sample, p), parameter);
if exitflag~=1
   parameters = -1; 
end
phi = parameters;
Fn = N;
n = input_sample(N);
lambda0 = phi * Fn / (1 - exp(-phi * n));
parameters = [lambda0 phi];
end

