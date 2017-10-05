clear, clc

f = @(x) x.^2.*cos(x)
g = @(x) exp(-2.*x)
h = @(x) f(x).*g(x)

x = [-4:10]'

tf = f(x)
tg = g(x)
th = h(x)

headings = {'x', 'fx', 'gx', 'hx'}

format shortE
disp(table(x,tf,tg,th, 'VariableNames', headings))


I = [0 1]
figure(1), clf(1)
subplot(2,2,1)
fplot(f,I)
subplot(2,2,3)
fplot(g,I)
subplot(2,2,[2 4])
fplot(h,I)


