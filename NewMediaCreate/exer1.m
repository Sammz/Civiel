import fouriertrans.m.*
load('ex1.mat');

figure(1), clf(1)
subplot(2,2,1)
plot(t, f)
axis([0,0.09,-1,1])
title('t, f')

[w,F,ww,FF] = fouriertrans(t,f);

subplot(2,2,2)
plot(w, F)
title('w, F')

clear max, clear index
[maxVar, maxi] = max(F);
freq = w(maxi)

[varred,a,b,err,pred] = sinus(t, f, 2*pi/(1/freq));

subplot(2,2,3)
plot(err)
title('err')

subplot(2,2,4)
plot(pred)
title('pred')
