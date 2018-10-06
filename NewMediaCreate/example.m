import fouriertrans.m.*
load('ex3.mat');         %Change with test data (t,f) assumed
t2 = t;
f2 = x;


figure(1), clf(1)
subplot(2,2,1)
plot(t2, f2)
%axis([0, 2, -1, 1])     % change accordingly to data
title('t, f')

[w,F,ww,FF] = fouriertrans(t2,f2);
subplot(2,2,2)
plot(w, F)
axis([-0.5 ,10, 0, 0.6])     % change accordingly to data
title('fouriertrans')


[maxVar1, maxi1] = max(F)
xVal1 = w(maxi1);

[maxVar2, maxi2] = max(F(105:end)) %Change according to index of maxVar1
xVal2 = w(maxi2 + 105);            %Change as much as F(x:end)

[maxVar3, maxi3] = max(F(170:end)) %Change according to index of maxVar2
xVal3 = w(maxi3 + 170);            %Change as much as F(x:end)

[maxVar4, maxi4] = max(F(360:end)) %Change according to index of maxVar2
xVal4 = w(maxi4 + 360);            %Change as much as F(x:end)

xValuesOfPeaks = [xVal1, xVal2, xVal3, xVal4]
frequencies = 2.*pi./(1./xValuesOfPeaks)
%frequencies = [12.5, 19, 44, 56.6];     % Change to find real values


[varred,a,b,err,pred] = sinus(t2, f2, frequencies);
subplot(2,2,3)
plot(pred)
title('pred')
subplot(2,2,4)
plot(err)
title('err')

aCof = a
bCof = b
