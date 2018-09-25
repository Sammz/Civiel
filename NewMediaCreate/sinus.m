function [varreduction,a,b,err,pred] = sinus(time,y1,omega)
%
%  [varreduction,a,b,err,pred] = sinus(t1,y1,omega) 
%
%  Fit a sinusoid with frequencies in the vector omega to y1.
%
%  y1(k) = b(1) sin((omega(1) * t1(k) ) + a(1) cos(omega(1)* t1(k)) 
%        + b(2) sin((omega(2) * t1(k) ) + a(2) cos(omega(2)* t1(k)) + ... +
%        + b(n) sin((omega(n)) * t1(k) ) + a(n) cos(omega(n)*t1(k)) + err(k)
%
%  which results in a variance reduction of varreduction
m=length(y1);
%omega=2*pi./tau

[ee,ff]=size(time);
if ee>ff,
    time=time';
    y1=y1';
end

kk=0;
n=length(omega);
for i=1:n,
    sinvec(i,:)=sin(time*omega(i));
    cosvec(i,:)=cos(time*omega(i));
    if abs(omega(i))<0.000001,
       kk=i;
    end
end

if kk==1,
    sinvec=sinvec(2:n,:);
elseif kk==n,
    sinvec=sinvec(1:n-1,:);
elseif kk>0,
    sinvec=[sinvec(1:kk-1,:) ; sinvec(kk+1:n,:)];
end


A=[sinvec*sinvec'  sinvec*cosvec' ; cosvec*sinvec' cosvec*cosvec'];
B=[sinvec*y1'; cosvec*y1'];
v=inv(A)*B;
if kk==0,
    a=v(1:n)';
    b=v(n+1:2*n)';
else
    a=v(1:n-1)';
    b=v(n:2*n-1)';
end

pred=a*sinvec+b*cosvec;
err=y1-pred;

if kk==1,
    a=[0 a];
elseif kk==n,
    a=[a 0]
elseif kk>1
    a=[a(1:kk-1) 0  a(kk:n-1)];
end

errvariance=norm(err);
signalvariance=norm(y1);
varreduction=errvariance/signalvariance;
if ee>ff,
    pred=pred';
    err=err';
    y1=y1';
end

c=a;
a=b;
b=c;
