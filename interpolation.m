close all
clear
clc

%% INTERPOLATION
numPoints = 20;   %must be > deg, if deg == numPoints -1 the polynomial will intersect every point
deg = 7;

points = rand(1,numPoints);

coeffs = polyfit(1:numPoints,points,deg);   % X coordinates are just the indeces of Y coordinates
step = 0.01;       

x = 1:step:numPoints;

y = polyval(coeffs,x);

%% PLOTS

plot(x,y)
hold on
plot(points, '.', 'MarkerSize', 10)
grid on
legend('Interpolation', 'Points')
