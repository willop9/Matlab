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

data = linspace(xStart,xEnd, samples);

y = m*data + 6;

plot(y,'o');

