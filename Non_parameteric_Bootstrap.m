function [res] = Non_parameteric_Bootstrap(in,B)
%NON_PARAMETERIC_BOOTSTRAP �˴���ʾ�йش˺�����ժҪ
%   in: time to failure
%   B: Bootstrap iterations
%   res: non-parametric Bootstrap samples
n = length(in);
res = zeros(B,n);
for i=1:B
   newArray = zeros(1, n);
   for j=1:n
      r = unidrnd(n);
      newArray(j) = in(r); 
   end
   newArray = sort(newArray);
   res(i,:) = newArray;
end
end

