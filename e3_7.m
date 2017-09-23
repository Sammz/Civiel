clear, clc

r = 3;
theta = linspace(0,2*pi,31);

x = r*cos(theta);
y = r*sin(theta);

r2 = linspace(0,3,31);
theta2 = pi/3;

x2 = r2*cos(theta2);
y2 = r2*sin(theta2);


x3 = r2.*cos(theta);
y3 = r2.*sin(theta);

figure(1) , clf(1), hold on
axis([-4 4, -4 4]) , axis equal
plot(x, y, 'Marker', 'square', 'MarkerEdgeColor', 'k','MarkerSize', 5, 'LineWidth', 2, 'Color', 'r')
plot(x2, y2, 'Marker', 'o', 'MarkerEdgeColor', 'r','MarkerSize', 1, 'LineWidth', 2, 'Color', 'k')
plot(x3, y3, 'Marker', '+', 'MarkerEdgeColor', 'b','MarkerSize', 5, 'LineWidth', 2, 'Color', 'g')


hold off

