clear, clc

c = [1 -2 -10 -1 2]

p1 = @(x) polyval(c(4:5), x)
p2 = @(x) polyval(c(1,4:5), x)
p3 = @(x) polyval(c(2:5), x)
p4 = @(x) polyval(c,x)
f = @(x) exp(x)


I = [-1 1]

figure(1), clf(1)
subplot(2,2,1)
fplot(p1,I)
hold on
fplot(f,I, 'Color', 'k')
hold off
subplot(2,2,2)
fplot(p2,I)
subplot(2,2,3)
fplot(p3,I)
subplot(2,2,4)
fplot(p4,I)
title('hoi')
legend('show', 'hoi')


