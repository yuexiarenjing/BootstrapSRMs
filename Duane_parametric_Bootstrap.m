function [res] = Duane_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_Duane 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
res = zeros(B,n);
paras = Duane(in);
alpha = paras(1);
beta = paras(2);
for i=1:B
   newArray = zeros(1, n);
   for j=1:n
       mt = rand*n;
       T = exp(log(mt / alpha) / beta); %生成新样本  
       newArray(j) = T;
   end
   newArray = sort(newArray);
   res(i,:) = newArray;%保存新样本
end
end

