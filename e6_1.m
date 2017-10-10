clear, clc, format shortG

a = [1 3 4 5 2 3 0 4 9 8]
b = [2 4 6 8 6 8]
c = union(a,b)
d = intersect(a,b)
e = setdiff(a,b)
f = setxor(a,b)
g = unique(a)

m = load('proces_a.txt')

dtemp = diff(m(2,:))
time = m(1,:)
temp = m(2,:)
hum  = m(3,:)

i_temp = find(temp >27)
inds = temp(i_temp+1)>27
i = i_temp.*inds


