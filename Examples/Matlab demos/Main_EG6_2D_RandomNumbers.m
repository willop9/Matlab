%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Dr. Ian Howard
% Associate Professor (Senior Lecturer) in Computational Neuroscience
% Centre for Robotics and Neural Systems
% Plymouth University
% A324 Portland Square
% PL4 8AA
% Plymouth, Devon, ?UK
% howardlab.com
% 24/09/2018

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test using functions

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% gaussian distribution
samples = 10000;

% draw samples from Gaussian distribution with zero mean and standard deviation 1
data = randn(samples,2);

bins = 10;


% plot a hisogram
bins = 100;

figure
subplot(1,2,1);
hold on
% put on a title
h=title('Histogram marginal distribution dimension 1');
h.FontSize=20;
% plot histogram
hist(data(:,1),bins);
h=xlabel('Data value');
h.FontSize=20;
h=ylabel('Bin counts');
h.FontSize=20;
subplot(1,2,2);
hold on
% put on a title
h=title('Marginal distribution dimension 2');
h.FontSize=20;
% plot histogram
hist(data(:,2),bins);
h=xlabel('Data value');
h.FontSize=20;
h=ylabel('Bin counts');
h.FontSize=20;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot scatter plot with plot directly

figure
hold on
% put on a title
h=title('scatter plot');
h.FontSize=20;
% plot x,y
plot(data(:,1), data(:,2), 'b+');
h=xlabel('x-value');
h.FontSize=20;
h=ylabel('y-value');
h.FontSize=20;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% surface plot

% Generate some Gaussian data
M = 15;
N = 4;
% draw samples from Gaussian distribution with zero mean and standard deviation 1
data = randn(M,N);

% Matlab surf plot
figure
hold on
% surf  3-D colored surface
surf(data);
title('Sirface plot of 2D Gaussian noise')
xlabel('Dimension M');
ylabel('Dimension N');
zlabel('Data value')

% Matlab surf plot
figure
hold on
% surf  3-D colored surface
h=surf(data);

% now change viewing angle
% view   3-D graph viewpoint specification.
% view(AZ,EL)  sest the angle of the view from which an
% observer sees the current 3-D plot.
% AZ is the azimuth or horizontal
% rotation
% EL is the vertical elevation (both in degrees).
AZ=35;
EL=60;
view(AZ,EL);
title('Sirface plot of 2D Gaussian noise')
xlabel('Dimension M');
ylabel('Dimension N');
zlabel('Data value')