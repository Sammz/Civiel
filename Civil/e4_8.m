clear, clc

I = [0 4]
f = @(x) (1+x)./(1+x.^2)



figure(1), clf(1), hold on
[x, fx] = fplot(f, I);
area(x, fx, 'FaceColor', 'y')
fplot(f, I, 'LineWidth', 3)
legend('area', 'f')
legend('boxoff')
text(0.5,0.2, 'surface beneath the curve of f', 'FontSize', 15)
title('area under f')