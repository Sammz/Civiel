clear, clc

m = load('expdata.dat');
t = m(1,:);
S = m(2,:);

lnS = log(S);
c = polyfit(t,lnS,1)
p = @(x) polyval(c,x)

St = @(t) 0.92479.*exp((-1.*t)./41.204)

figure(1), clf(1), hold on
plot(t,S)
hold off

figure(2), clf(2), hold on
plot(t, lnS)
fplot(p,[0,100],'r')

figure(3), clf(3), hold on
plot(t,S,'*')
fplot(St,[0,100], 'r')














