clear, clc

u = [0.07 0.12 0.17 0.24 0.31]
F = [0.57 0.92 1.28 1.86 2.45]
c = F./u
Cmean = mean(c)
Ftheo = u*Cmean

figure(1) , clf(1), hold on
axis([0, 0.4, 0, 3]) 
plot(u, F, 'Marker', 'square', 'MarkerEdgeColor', 'r','MarkerSize', 5, 'MarkerFaceColor', 'k', 'LineStyle', 'none')
plot([0 u] , [0 Ftheo], 'LineWidth', 2, 'Color', 'b')

hold off

tabu = u'
tabF = F'
tabFtheo = Ftheo'

format shortG
headings = {'u', 'F', 'Diff'};
disp(table(tabu, tabF, tabF-tabFtheo,'VariableNames', headings))


