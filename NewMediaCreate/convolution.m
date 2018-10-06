% excersises 04h1a FWH

x = [0 0 0 1 1 1 1 1 1 1 1 1];
t = 0:length(x)-1;

figure(1), clf(1)
subplot(2,2,1)
stem(t, x, 'linewidth',2);
grid on
h = 1/2*[1  1];
y = conv(x,h);

subplot(2,2,2)
stem(y, 'linewidth',2)
grid on

subplot(2,2,3)
stem(t,[x;y(1:length(x))]', 'linewidth',2)
axis([0 length(t)-1 0 2])
grid on
y2=filter(h, [1], x);

subplot(2,2,4)
stem(t,[x;y2]', 'linewidth',2)
axis([0 length(t)-1 0 2])
grid on