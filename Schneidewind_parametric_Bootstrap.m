function [res] = Schneidewind_parametric_Bootstrap(in,B)
%PARAMETRIC_BOOTSTRAP_JM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
N = length(in);
res = zeros(B,N);
paras = Schneidewind(in);
lambda0 = paras(1);
phi = paras(2);
for i=1:B
   newArray = zeros(1, N);
   for j=1:N
       mt = rand * lambda0/phi;
       T = log(1 - mt / lambda0 * phi) / -phi;
       newArray(j) = T;
   end
   newArray = sort(newArray);
   res(i,:) = newArray;%����������
end
end

