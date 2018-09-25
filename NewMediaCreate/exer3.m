import fouriertrans.m.*
load('ex3.mat');

figure(1), clf(1)
plot(t, f)
%axis([0,0.09,-1,1])

[w,F,ww,FF] = fouriertrans(t,f);

figure(2), clf(2)
plot(w, F)

clear max, clear index
[maxVar, maxi] = max(F);
freq = w(maxi)

[varred,a,b,err,pred] = sinus(t, f, 2*pi/freq);

figure(3), clf(3)
plot(pred, err)
