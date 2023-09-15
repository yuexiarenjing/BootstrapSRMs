function [res1,res2] = GO_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_JM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
res1 = zeros(B,n);
res2 = zeros(B,n);
[uttf,ucount] = ttf2uttf(in);
paras = GO(uttf, ucount);
phi = paras(1);
N0 = paras(2);
tn = in(n);
for i=1:B
   newArray1 = zeros(1, n);
   newArray2 = zeros(1, n);
   for j=1:n
      T = rand * tn;
      mt = N0*(1-exp(-phi*T));
      newArray1(j) = T;
      newArray2(j) = mt;
   end
   newArray1 = sort(newArray1);
   newArray2 = sort(newArray2);
   res1(i,:) = newArray1;%保存新样本
   res2(i,:) = newArray2;%保存新样本
end
end

