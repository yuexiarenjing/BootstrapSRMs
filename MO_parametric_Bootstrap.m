function [res] = MO_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_JM 此处显示有关此函数的摘要
%   此处显示详细说明
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
       T = (exp(mt*phi)-1)/phi/lambda0; %生成新样本  
       newArray(j) = T;
   end
   newArray = sort(newArray);
   res(i,:) = newArray;%保存新样本
end
end

