function [out] = ttf2tbf(in)
%TTF2TBF �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(in);
out = zeros(1,n);
out(1) = in(1); 
for i=2:n
   out(i) = in(i) - in(i-1); 
end
end

