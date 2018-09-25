clear, clc

k = 0:20;
h = 10.^(-1.*k);
diff = ((9+h).^0.5-9^0.5)./h;
trunc = diff-(1/(2*9^0.5));

format shortG
headings = {'k', 'h', 'diff', 'trunc'};

tk = k';
th = h';
tdiff = diff';
ttrunc = trunc';

disp(table(tk, th, tdiff, ttrunc, 'VariableNames', headings))


