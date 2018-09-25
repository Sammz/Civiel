import fouriertrans.m.*
load('ex2.mat');

figure(1), clf(1)
subplot(2,2,1)
plot(t, f)
%axis([0,0.09,-1,1])
title('t, f')

[w,F,ww,FF] = fouriertrans(t,f);

subplot(2,2,2)
plot(w, F)
title('w, F')

clear max, clear index
[maxVar1, maxi1] = max(F(1:2));
freq1 = w(maxi)

clear max, clear index
[maxVar2, maxi2] = max(F(2:end));
freq2 = w(maxi2)

[varred,a,b,err,pred] = sinus(t, f, [12, 17]);

subplot(2,2,3)
plot(err)
title('err')

subplot(2,2,4)
plot(pred)
title('pred')
