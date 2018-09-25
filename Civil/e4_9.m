clear, clc

f = @(x) x./abs(x)
g = @(x) 1./(1+exp(-1./x))
h = @(x) tan(x)

I = [-2 2]

figure(1), clf(1)
subplot(2,2,1), hold on
title('f')
fplot(f, I)
subplot(2,2,2), hold on
title('g')
fplot(g, I)
subplot(2,2,[3 4]), hold on
title('h')
fplot(h, I)



