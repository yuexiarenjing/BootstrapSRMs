function [res] = MO_getParas_NPB(in,B)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
samples = Non_parameteric_Bootstrap(in , B);
%paras = zeros(B,2);
paras = [];
for i=1:B
   tmp = MO(samples(i,:));
   if tmp==-1
      B = B - 1; 
      if B==0
         disp('error in getParasMO_NPB'); 
      end
      continue;
   end
   paras = [paras; tmp]; 
end
res = mean(paras,1);
end

