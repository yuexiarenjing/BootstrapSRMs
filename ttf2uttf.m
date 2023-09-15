function [uttf,ucount] = ttf2uttf(ttf)
%TTF2UTTF 此处显示有关此函数的摘要
%   此处显示详细说明
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

