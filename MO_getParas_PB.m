function [res] = MO_getParas_PB(in,B)
%GETPARASJM 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
samples = MO_parametric_Bootstrap(in , B);
%paras = zeros(B,2);
paras = [];
for i=1:B
   tmp = MO(samples(i,:));
   if tmp==-1
      B = B - 1; 
      if B==0
         disp('error in getParasMO_PB'); 
      end
      continue;
   end
   paras = [paras; tmp]; 
end
res = mean(paras,1);
end
