function [out] = ttf2tbf(in)
%TTF2TBF 此处显示有关此函数的摘要
%   此处显示详细说明
n = length(in);
out = zeros(1,n);
out(1) = in(1); 
for i=2:n
   out(i) = in(i) - in(i-1); 
end
end

