function [parameters] = GO(time_sample, number_sample)
%JM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n=length(time_sample);
parameter = 1;
[parameters,~,exitflag] = fminsearch(@(p) GOFun(time_sample, number_sample, p), parameter);
if exitflag~=1
   parameters = -1;
   return; 
end
phi = parameters;
tn = time_sample(n);
N0 = number_sample(n) / (1 - exp(-phi*tn));
parameters = [phi N0];
end

