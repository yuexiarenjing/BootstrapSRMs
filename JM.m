function [parameters] = JM(input_sample)
%JM 此处显示有关此函数的摘要
%   此处显示详细说明
n=length(input_sample);
parameter = n;
tbf = ttf2tbf(input_sample);
[parameters,~,exitflag] = fminsearch(@(p) JMFun(tbf, p), parameter);
if exitflag~=1
   parameters = -1;
   return; 
end
if parameters > 1.2*n %N0略微波动-1.3
   parameters = -1;
   return;
end
sum1 = 0; sum2 = 0;
for i=1:n
   sum1 = sum1 + tbf(i);
   sum2 = sum2 + (i-1)*tbf(i);
end
parameters = [parameters n/(parameters(1)*sum1-sum2)]; % N0, phi
end

