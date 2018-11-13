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
% test simple plot demo

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate some time samples

% want 2 seconds 
timeMax = 2;

% want 10ms time steps
deltaT = 0.01;

% start at zero
t = 0:deltaT:timeMax;

% show time matrix size
size(t)

% now transpose and do again
size(t')

% print values to display
t'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate a sine wave at time point defines in time sampe matrix t

% set frequency to 1.7 Hz
f = 1.7;

% amplutude of sin set to 10
amplitude = 10;

% use Matlab sin function
dataSin = amplitude * sin(2 * pi * f * t);

% use Matlab cos function
dataCos = amplitude * cos(2 * pi * f * t);

% print transposed values of sine data to display in column
dataSin'


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% always yswe the help funtion in Matlab to find out what  function does!
% for example
help plot

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% simple graphical plot

% want a new figure
figure

% want to hold everything we ask for onto this plot
hold on

% now plot array
% 'r' for red
% 'o' gives plus symbol
% '-' draws line between points
h=plot(dataSin, 'ro-');

% notice plot return a handle with plot properties
% later versions of Matlab let you change parameters directly
% from handle structure

h

% we can also always use handle with set function to change plot parameters
% change plot line
set(h, 'LineWidth', 2);
set(h, 'MarkerSize', 10);

% add a title
h=title('Simple sinewave samples plot');
% want bigger font than default
set(h, 'FontSize', 20);

% put on legend to plotted line
h=legend('Sine Wave Signal');
% want bigger font than default
set(h, 'FontSize', 20);

% add x-axis label
h=xlabel('samples');
% want bigger font than default
set(h, 'FontSize', 20);

% add y-axis label
h=ylabel('Amplitude');
% want bigger font than default
set(h, 'FontSize', 20);


% want bigger font than default on numbering
set(gca, 'FontSize', 20);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot sine and cosine against time

% want a new figure
figure
% want to hold everything we ask for onto this plot
hold on
% now plot sin data array versus time
% 'r' for red
% '+' gives plus marker
% '-' draws line between points
h=plot(t, dataSin, 'r+-');
set(h, 'LineWidth', 2);
set(h, 'MarkerSize', 8);
% now plot cos data array versus time
% 'b' for blue
% 'o' gives o marker
% '-' draws line between points
h=plot(t, dataCos, 'bo-');
set(h, 'LineWidth', 2);
set(h, 'MarkerSize', 8);

% add a title
h=title('sinusoids versus time plot');
% want bigger font than default
set(h, 'FontSize', 20);
% add x-axis label
h=xlabel('Time[s]');
% want bigger font than default
set(h, 'FontSize', 20);
% add y-axis label
h=ylabel('Amplitude');
% want bigger font than default
set(h, 'FontSize', 20);
% put on legend to plotted line
h=legend('Sine Wave Signal', 'Cosine Wave Signal');
% want bigger font than default
set(h, 'FontSize', 20);
% want bigger font than default on numbering
set(gca, 'FontSize', 20);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot sine against cosine

% want a new figure
figure
% want to hold everying we ask fo onto this plot
hold on
% now plot array
% 'r' for red
% 'o' gives plus symbol
% '-' draws line between points
h=plot(dataCos, dataSin, 'ro-');

% add a title
h=title('sinewave versus cosine plot');
% want bigger font than default
set(h, 'FontSize', 20);
% add x-axis label
h=xlabel('Cosine signal value');
% want bigger font than default
set(h, 'FontSize', 20);
% add y-axis label
h=ylabel('Sine signal value');
% want bigger font than default
set(h, 'FontSize', 20);
% put on legend to plotted line
h=legend('Circular trajectory');
% want bigger font than default
set(h, 'FontSize', 20);
% want bigger font than default on numbering
set(gca, 'FontSize', 20);



