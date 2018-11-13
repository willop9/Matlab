close all
clear all
clc
samples = 200000

data = randn(1,samples)

figure
subplot(1,2,1)
hold on
plot(data, '.');
subplot(1,2,2)
hold on
histogram(data,500);
