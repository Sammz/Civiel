clear, clc

v = 1:4
M = [v',v'.*-2,v'-1,v'.*10+1]

M(:,[1 2 3 4]) = M(:,[4 3 2 1])          % switch 1 and 4 column and 2 and 3 column

M([1 2],[1 2]) = M([3 4], [3 4]) % 2x2 top left = 2x2 lower right

M([1 4],:) = M([4 1],:)          % first and last row switched

M = M([1,3,4], [1,2,4])          % delete 2 row and 3 column

M = M'                           % transpose M

M = M(:, [1 2 1 3])              % 1 column added between 3 and 4 column

M = M([1 2 2 3], [ 1 2 2 3 4])   % add 2 row and column after 2 row and column




