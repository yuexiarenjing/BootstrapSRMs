function [res] = Duane_getParas_PB(in,B)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
samples = Duane_parametric_Bootstrap(in , B);
%paras = zeros(B,2);
paras = [];
for i=1:B
   tmp = Duane(samples(i,:));
   if tmp==-1
      B = B - 1; 
      if B==0
         disp('error in getParasDuane_PB'); 
      end
      continue;
   end
   paras = [paras; tmp]; 
end
res = mean(paras,1);
end
