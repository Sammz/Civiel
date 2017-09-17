clear, clc

l = [1 2 5 10]

w = [2 4.3 1 1.5]

area_rectangles = l.*w

h = [5 1 4 0.5]

area_beams = 2.*l.*w+2.*l.*h+2.*w.*h

volume_beams = l.*h.*w

radius = [1 2 3 4 6 7 10 12]

area_spheres = 4.*pi.*radius.^2

volume_spheres = (4./3).*pi.*radius.^3

ratio = volume_spheres./area_spheres

plot(radius, area_spheres, '--or')

hold on
plot(radius, volume_spheres, ':xk')
legend('area', 'volume', 'Location', 'Northwest')
hold off

figure(34) , clf(34) , hold on
plot(radius, ratio, '-*g', 'LineWidth', 2, 'MarkerEdgeColor', 'k', 'MarkerSize', 10)





