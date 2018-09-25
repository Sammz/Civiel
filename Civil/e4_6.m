clear, clc

f = @(x) x.*sin(x)
f_diff = @(x) sin(x) + x.*cos(x)

I = [4.8,5]
figure(1), clf(1), hold on
fplot(f, I)
fplot(f_diff, I, 'g')
plot([4.8,5],[0,0], 'k-')
hold off
legend('f', 'f\_diff')






