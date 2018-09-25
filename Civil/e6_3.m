clear, clc, format shortG

t = 0:5:30
V = [1000 694 444 250 111 28 0]

mean_outflow_velocity = (diff(V)./diff(t))';

t_start = t(1:(end-1))';
t_end = t(2:end)';
out = diff(V)';

disp(table(t_start, t_end, out, mean_outflow_velocity))

iii = mean(mean_outflow_velocity)   % yes

c = polyfit(t,V,6)
p = @(x) polyval(c,x)

c2 = polyfit(t,V,2)
p2 = @(x) polyval(c2,x)

figure(1), clf(1), hold on
plot(t,V, 'k--*')
fplot(p, [0,30], 'r')
fplot(p2, [0,30], 'b')
hold off
title('outflow\_graphs')
ylabel('Volume')
xlabel('Time')









