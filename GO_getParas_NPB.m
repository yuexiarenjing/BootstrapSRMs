function [res] = GO_getParas_NPB(in,B)
%GO_GETPARAS_NPB 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
samples = Non_parameteric_Bootstrap(in , B);
paras = [];
for i=1:B
   [uttf,ucount] = ttf2uttf(samples(i,:)); 
   tmp = GO(uttf,ucount);
   if tmp==-1
      B = B - 1; 
      if B==0
         disp('error in getParasJGO_NPB'); 
      end
      continue;
   end
   paras = [paras; tmp]; 
end
res = mean(paras,1);
end
