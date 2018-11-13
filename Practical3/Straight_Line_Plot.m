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

x = linspace(xStart,xEnd, samples);

y = m*x + c;

plot(x,y,'o');

