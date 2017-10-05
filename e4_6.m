clear, clc

f = @(x) x.*sin(x)
f_diff = @(x) sin(x) + x.*cos(x)

I = [0 6]
figure(1), clf(1)
fplot(f, I), hold on
fplot(f_diff, I, 'Color', 'g'), hold off
legend('f', 'f\_diff')



