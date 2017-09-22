% Exercise 2.1

clear , clc   % the Worspace and Command window will be cleared

%{
By using a characteristic quantity the circumference and area 
of geometric figures can be calculated
%}

% characteristic quantity:
cq = 5;

disp('Equilateral triangle:')       % display the text between '  '
side = cq       % characteristic quantity
circumference_triangle = 3*side
area_triangle = 3^(1/2)/4*side^2

disp('Square:')
side = cq       % characteristic quantity
circumference_square = 4*side
area_square = side^2
    
disp('Circle:')
radius = cq      % alternative: diameter = cq
circumference_circle = 2*pi*radius
area_circle = pi*radius^2

disp('piramid')
side = cq
pyramidArea = 4*area_triangle
volume_pyramid = (sqrt(2)/12)*side^3

disp('cube')
side = cq
area_cube = 6*side
volume_cube = 3*side






