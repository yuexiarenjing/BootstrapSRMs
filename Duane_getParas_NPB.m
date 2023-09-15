function [res] = Duane_getParas_NPB(in,B)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
samples = Non_parameteric_Bootstrap(in , B);
%paras = zeros(B,2);
paras = [];
for i=1:B
   tmp = Duane(samples(i,:));
   if tmp==-1
      B = B - 1; 
      if B==0
         disp('error in getParasDuane_NPB'); 
      end
      continue;
   end
   paras = [paras; tmp]; 
end
res = mean(paras,1);
end

