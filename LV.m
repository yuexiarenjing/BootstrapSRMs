function [parameters] = LV(input_sample)
%JM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n=length(input_sample);
parameter = [1,1,1];
tbf = ttf2tbf(input_sample);
[parameters,~,exitflag] = fminsearch(@(p) LVFun(tbf, p), parameter);
if exitflag~=1
   parameters = -1;
   return; 
end
end

