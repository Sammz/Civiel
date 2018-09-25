clear, clc

l = [1 2 5 10]

w = [2 4.3 1 1.5]

area_rectangles = l.*w

h = [5 1 4 0.5]

area_beams = 2.*l.*w+2.*l.*h+2.*w.*h

volume_beams = l.*h.*w

radius = [1 2 3 4 6 7 10 12]'

area_spheres = 4.*pi.*radius.^2

volume_spheres = (4./3).*pi.*radius.^3

ratio = volume_spheres./area_spheres

data = [radius area_spheres volume_spheres ratio]
disp(data)

format shortG
headings = {'radius', 'area', 'volume', 'ratio'};
spheres = {'s1','s2','s3','s4','s5','s6','s7','s8'};
disp(table(radius, area_spheres, volume_spheres, ratio,'VariableNames', headings, 'RowNames', spheres))



