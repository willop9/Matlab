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

function PlotScatterPlot(data)
% plot scatter plot using function

figure
hold on
% put on a title
h=title('Scatter plot in function');
h.FontSize=20;
% plot x,y
plot(data(:,1), data(:,2), 'b+');
h=xlabel('x-value');
h.FontSize=20;
h=ylabel('y-value');
h.FontSize=20;
