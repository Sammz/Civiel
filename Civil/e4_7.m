clear, clc

I = [0 pi]
p = 1:4
fp = @(x) x.*sin(p.*x)

figure(1), clf(1), hold on
title('different p values for x*sin(x)')
fplot(fp,I)
legend(['p = ', num2str(p(1))], ['p = ', num2str(p(2))], ['p = ', num2str(p(3))], ['p = ', num2str(p(4))], 'Location', 'SouthWest')




