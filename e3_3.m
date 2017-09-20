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

% figure(34) , clf(34) , hold on
% plot(radius, ratio, '-*g', 'LineWidth', 2, 'MarkerEdgeColor', 'k', 'MarkerSize', 10)
% plot([0,radius(1)],[0,ratio(1)],':k','LineWidth',4)
% xlabel('radius') ,ylabel('volume/area')
% text(4,0.5,'note: graph passes the origin')
% title('the ratio volume/area is proportional to the radius','FontSize',15)
% hold off

O = [0 0]
P = [3 2]
Q = [-2 5]
R = [0 -3]
S = [1 6]
T = [-4 0]
U = [-4 -3]

HexX = [O(1) R(1) P(1) S(1) Q(1) T(1) O(1)]
HexY = [O(2) R(2) P(2) S(2) Q(2) T(2) O(2)]

TetX = [O(1) P(1) S(1) Q(1) O(1)]
TetY = [O(2) P(2) S(2) Q(2) O(2)]

pos = [-4 -3 4 3]

figure(1) , clf(1) , hold on
axis([-4 4, -4 6]) , axis equal
plot(HexX, HexY, 'LineWidth', 5, 'Color', 'g')
plot(TetX, TetY, 'LineWidth', 5, 'Color', 'r')
rectangle('Position', pos, 'LineWidth', 5, 'EdgeColor', 'g')
hold off

figure(2) , clf(2) , hold on
axis([-4 4, -4 6]) , axis equal
fill(HexX, HexY, 'b')
fill(TetX, TetY, 'r')
rectangle('Position', pos, 'FaceColor', 'g')
hold off



