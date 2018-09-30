import fouriertrans.m.*
load('ex3.mat');         %Change with test data (t,f) assumed
t2 = t;
f2 = f;


figure(1), clf(1)
subplot(2,2,1)
plot(t2, f2)
%axis([0, 2, -1, 1])     % change accordingly to data
title('t, f')

[w,F,ww,FF] = fouriertrans(t2,f2);
subplot(2,2,2)
plot(w, F)
%axis([-0.5 ,15, 0, 5])     % change accordingly to data
title('fouriertrans')


[maxVar1, maxi1] = max(F)
xVal1 = w(maxi1);

[maxVar2, maxi2] = max(F(50:end)) %Change according to index of maxVar1
xVal2 = w(maxi2 + 50);            %Change as much as F(x:end)

[maxVar3, maxi3] = max(F(1000:end)) %Change according to index of maxVar2
xVal3 = w(maxi3 + 1000);            %Change as much as F(x:end)


xValuesOfPeaks = [xVal1, xVal2, xVal3]
frequencies = 2.*pi./(1./xValuesOfPeaks)
%frequencies = [0, 34, 78];     % Change to find real values


[varred,a,b,err,pred] = sinus(t2, f2, frequencies);
subplot(2,2,3)
plot(pred)
title('pred')
subplot(2,2,4)
plot(err)
title('err')

aCof = a
bCof = b
