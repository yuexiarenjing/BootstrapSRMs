function [res] = LV_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_JM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
res = zeros(B,n);
paras = LV(in);
beta0 = paras(1);
beta1 = paras(2);
alpha = paras(3);
for i=1:B
   newArray = zeros(1, n);
   for j=1:n
       F_value = rand;
       tmp1 = exp(log(1 - F_value) / alpha);
       tmp2 = beta0 + beta1 * (j-1);
       tmp3 = tmp2 / tmp1;
       X = tmp3 - beta0 - beta1 * (j-1);
       if j==1
           newArray(j) = X;
       else
           newArray(j) = newArray(j-1) + X;
       end
   end
   newArray = sort(newArray);
   res(i,:) = newArray;%保存新样本
end
end

