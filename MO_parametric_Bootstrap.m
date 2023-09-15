function [res] = MO_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_JM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
res = zeros(B,n);
paras = MO(in);
beta0 = paras(1);
beta1 = paras(2);
phi = 1/beta0;
lambda0 = beta1 / phi;
for i=1:B
   newArray = zeros(1, n);
   for j=1:n
       mt = rand*n;
       T = (exp(mt*phi)-1)/phi/lambda0; %����������  
       newArray(j) = T;
   end
   newArray = sort(newArray);
   res(i,:) = newArray;%����������
end
end

