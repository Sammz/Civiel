load('ex05-1.mat');
sys1 = sys1;
uArray = [(u1) (u2) (u3) (u4) (u5) (u6) (u7) (u8) (u9) (u10)];
length(uArray)

figure(1), clf(1);
for i = 1:length(uArray)
    subplot(4,4,i)
    plot(t, uArray(i))
end



% Exercise 1
load 'ex05-1.mat'
x=u2; %Select input signal
figure(2), clf(2);
y=lsim(sys1,x,t);
hold on;
plot(t,x,'blue','linewidth',1); % input signal in blue
plot(t,y,'red','linewidth',1); % output signal in red
grid on;
nrOfSamples=length(y)-1;
% For assessing transient-less behaviour we focus on the last part of
% the samples, which start at e.g. 3/4, 4/5, .. of the number of samples:
lastFractionStart=7/8;
startPt=1+round(lastFractionStart*nrOfSamples)
% Now determine max and min and amplitude estimate
% (at the end of the signal):
maxy=max(y(startPt:end))
miny=min(y(startPt:end))
Ampy=(maxy-miny)/2