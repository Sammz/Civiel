function [w,F,ww,FF]=fouriertrans(t,f);
% [w,F]=fouriertrans(t,f) -- Fourier transform of a continuous time signal
%
%   IN: t, vector of N equidistant sampled time (until time T)
%       f, vector of N sampled function values 'f(t)'
%  OUT: w, row vector of sampled frequencies (0:(N/2-1))*2*pi/T/N
%       F, row vector of sampled Fourier transform 'F(w)'


N=length(f);
FF=fft(f)/N;
T=t(N)-t(1);
ww=0:(N-1)/(N*T):(N-1)^2/(N*T);

x=round(N/2);

w=ww(1:x);
F=abs(FF(1:x));

