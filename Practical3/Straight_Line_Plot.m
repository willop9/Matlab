close all
clear all
clc

xStart = -4;
xEnd = 6;
samples = 100

m = 1.6;
c = 6;

mean = 0;

r = randn(1,samples);
x = linspace(xStart,xEnd, samples);
y = m*x + c;
y = y + r(1,:);

figure
hold on
p = plot(x,y,'b-o');
p=title('Linear Data Plot with Noise');
p=xlabel('Data Point Number');
p=ylabel('Data Point Value');


