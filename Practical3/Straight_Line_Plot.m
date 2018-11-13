close all
clear all
clc

xStart = -4;
xEnd = 6;
samples = 100

m = 1.6;
c = 6;

mean = 0;
c = 6;

r = randn(1,samples);
x = linspace(xStart,xEnd, samples);
y = m*x + c;
y_noise = y + r(1,:);

figure
hold on
plot(x,y_noise,'b-o');


