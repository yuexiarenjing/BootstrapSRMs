function [res] = GO_getParas_PB(in,B)
%GETPARASJM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
[uttfArray,ucountArray] = GO_parametric_Bootstrap(in , B);
paras = [];
for i=1:B
   tmp = GO(uttfArray(i,:),ucountArray(i,:));
   if tmp==-1
      B = B - 1; 
      if B==0
         disp('error in getParasGO_PB'); 
      end
      continue;
   end
   paras = [paras; tmp]; 
end
res = mean(paras,1);
end

