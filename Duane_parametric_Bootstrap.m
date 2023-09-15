function [res] = Duane_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_Duane �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
res = zeros(B,n);
paras = Duane(in);
alpha = paras(1);
beta = paras(2);
for i=1:B
   newArray = zeros(1, n);
   for j=1:n
       mt = rand*n;
       T = exp(log(mt / alpha) / beta); %����������  
       newArray(j) = T;
   end
   newArray = sort(newArray);
   res(i,:) = newArray;%����������
end
end

