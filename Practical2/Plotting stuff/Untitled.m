close all
clear all
samples = 2000000;
sd = 1;

data = sd * rand(1,samples);
Size =  size(data); 
disp(Size);

%PlotScatterPlot(data);
figure
subplot(1,2,1)
hold on
plot(data, '.');
subplot(1,2,2)
hold on
histogram(data,50);

