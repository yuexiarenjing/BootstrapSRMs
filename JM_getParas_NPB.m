function [res] = JM_getParas_NPB(in,B)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
samples = Non_parameteric_Bootstrap(in , B);
%paras = zeros(B,2);
paras = [];
for i=1:B
   tmp = JM(samples(i,:));
   if tmp==-1
      B = B - 1; 
      if B==0
         disp('error in getParasJM_NPB'); 
      end
      continue;
   end
   paras = [paras; JM(samples(i,:))]; 
end
res = mean(paras,1);
end

