clear, clc

i   = zeros(3, 4)
ii  = eye(5)
iii = 10.*ones(2,4)

E = eye(3)
k = 4:6 ; E(1:3, k) = 0

R = rand(3).*2-1

j = 1:4
Data(:,1) = j
Data(:,2) = j.^2
Data(:,3) = (j-2).*j
Data(:,4) = 2

f = @(x) [x; x.^2; (x-2).*x; 2]
h = f(j)


A = @(a) [a 1 a; 0 1 a; a^2 0 a; a 0 a];
hh = A(4)



