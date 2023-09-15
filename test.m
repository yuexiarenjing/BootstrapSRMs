close all;
clear;
load A.mat;

p1 = A(:, 1);
p2 = A(:, 2);

y = [p1, p2];
c = bar(y);

legend('(MSFE1-MSFE2)/MSFE1', '(MSFE1-MSFE3)/MSFE1');
xlabel('Data Set');
ylabel('Optimization Ratio');
% set(gca,'XTickLabel', {'DATA'})