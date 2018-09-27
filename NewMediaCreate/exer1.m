import fouriertrans.m.*
load('ex1.mat');

figure(1), clf(1)
subplot(2,2,1)
plot(t, f)
axis([0, 2, -1, 1])     % change accordingly to data
title('t, f')

[w,F,ww,FF] = fouriertrans(t,f);
subplot(2,2,2)
plot(w, F)
axis([0 ,20, 0, 1])     % change accordingly to data
title('fouriertrans')


clear max, clear index
[maxVar1, maxi1] = max(F(1:end));
xVal1 = w(maxi1)

clear max, clear index
[maxVar2, maxi2] = max(F(2:end));
xVal2 = w(maxi2)

clear max, clear index
[maxVar3, maxi3] = max(F(10:end));
xVal3 = w(maxi3)

xValuesOfPeaks = [xVal1]
frequencies = 2*pi/(1/xValuesOfPeaks)

[varred,a,b,err,pred] = sinus(t, f, frequencies);
subplot(2,2,3)
plot(pred)
title('pred')
subplot(2,2,4)
plot(err)
title('err')
