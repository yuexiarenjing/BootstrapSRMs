function [res] = JM_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_JM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
res = zeros(B,n);
paras = JM(in);
N0 = paras(1);
phi = paras(2);
for i=1:B
   newArray = zeros(1, n);
   for j=1:n
       F_value = rand;
       temp1 = log(1 - F_value);
       temp2 = -1*phi * (N0 - j + 1);
       X = temp1 / temp2; %生成新样本
       if j==1
           newArray(j) = X;
       else
           newArray(j) = newArray(j-1) + X;
       end
   end
   res(i,:) = newArray;%保存新样本
end
end

