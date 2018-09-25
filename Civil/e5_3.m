clear, clc

A = rand(3,3)
B = ones(3).*2
C = hilb(3)

ii  = B.^2-4.*A.*C

x1 = (-1.*B+sqrt(ii))/(2.*A)
x2 = (-1.*B-sqrt(ii))/(2.*A)

iv = x1.*x2-C./A
