close all
clear all
samples = 20000;

data = rand(samples,samples);

MeanData = mean(data,2);
figure
subplot(1,2,1)
hold on
plot(MeanData, '.');
subplot(1,2,2)
hold on
histogram(MeanData, 200)