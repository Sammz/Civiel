clear, clc

w = [-10:0, 35:2:52]

w(1:5) = w(16:end)

w(2:2:end) = 0

w(6:16) = []

w([1,7]) = w([7,1])

w(5:(end + 1)) = w(4:end)
w(4) = 13




