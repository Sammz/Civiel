clear, clc

x = 4; y = 2;

xv = [0 0 x/2 x x 0];
yv = [0 y 2*y y 0 0];

figure(36), clf(36), hold on
axis equal
plot(xv, yv, 'LineWidth', 3, 'Color', 'k')
plot([2 2], [4 2], 'LineStyle', '-.', 'Color', 'k', 'LineWidth', 2)
plot([0 4], [2 2], 'LineWidth', 15, 'Color', 'r')
beam1 = plot([0 4], [2 0], 'LineWidth', 6, 'Color', 'b')
beam2 = plot([0 4], [0 2], 'LineWidth', 6, 'Color', 'g')
plot([xv 2], [yv 1],'LineStyle', 'none', 'MarkerSize', 45, 'MarkerFaceColor', 'y', 'Marker', 'o', 'MarkerEdgeColor', 'y')
legend([beam1 beam2], 'beam 1', 'beam 2')
legend('boxoff')

text(x/2-0.5,y,'cross beam', 'FontSize', 15)
text(0.1,y/2,['y = ', num2str(y)],'FontSize',15)
text(2.1,3,'y','FontSize',15)
text(1.75,0.2,['x = ', num2str(x)],'FontSize',15)

axis off
hold off


clear, clc

x = 3; y = 1;

xv = [0 0 x/2 x x 0];
yv = [0 y 2*y y 0 0];

figure(37), clf(37), hold on
axis equal
plot(xv, yv, 'LineWidth', 3, 'Color', 'k')
plot([x/2 x/2], [y 2*y], 'LineStyle', '-.', 'Color', 'k', 'LineWidth', 2)
plot([0 x], [y y], 'LineWidth', 15, 'Color', 'r')
beam1 = plot([0 x], [y 0], 'LineWidth', 6, 'Color', 'b')
beam2 = plot([0 x], [0 y], 'LineWidth', 6, 'Color', 'g')
plot([xv x/2], [yv y/2],'LineStyle', 'none', 'MarkerSize', 45, 'MarkerFaceColor', 'y', 'Marker', 'o', 'MarkerEdgeColor', 'y')
legend([beam1 beam2], 'beam 1', 'beam 2')
legend('boxoff')

text(x/2-0.5,y,'cross beam', 'FontSize', 15)
text(0.1,y/2,['y = ', num2str(y)],'FontSize',15)
text(2.1,3,'y','FontSize',15)
text(1.75,0.2,['x = ', num2str(x)],'FontSize',15)


hold off


