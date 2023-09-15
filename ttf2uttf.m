function [uttf,ucount] = ttf2uttf(ttf)
%TTF2UTTF �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(ttf);
N = ceil(ttf(n));
uttf = zeros(1,N);
ucount = zeros(1,N);
c = 0;
for i=1:N
   uttf(i) = i;
   while c+1 <=n && ttf(c+1) <= i
      c = c + 1; 
   end
   ucount(i) = c;
end
end

