import fouriertrans.m.*
load('exam230914.mat');         %Change with test data

figure(1), clf(1)
subplot(2,2,1)
plot(t, x)
axis([10, 20, -2, 1])     % change accordingly to data
title('t, x')

[w,F,ww,FF] = fouriertrans(t,x);
subplot(2,2,2)
plot(w, F)
axis([-0.5 ,2.5, 0, 0.4])     % change accordingly to data
title('fouriertrans')


[maxVar1, maxi1] = max(F)
xVal1 = w(maxi1);

[maxVar2, maxi2] = max(F(4:30)) %Change according to index of maxVar1
xVal2 = w(maxi2 + 4);            %Change as much as F(x:end)

[maxVar3, maxi3] = max(F(30:100)) %Change according to index of maxVar2
xVal3 = w(maxi3 + 30);            %Change as much as F(x:end)

[maxVar4, maxi4] = max(F(100:end)) %Change according to index of maxVar3
xVal4 = w(maxi4 + 100);            %Change as much as F(x:end)

xValuesOfPeaks = [xVal1, xVal2, xVal3, xVal4]
frequencies = 2.*pi./(1./xValuesOfPeaks)
frequencies = [0, 1, 3.2673, 13.8230];     % Change to find real values


[varred,a,b,err,pred] = sinus(t, x, frequencies);
subplot(2,2,3)
plot(pred)
title('pred')
subplot(2,2,4)
plot(err)
title('err')

aCof = a
bCof = b