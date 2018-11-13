close all
clear all
samples = 20000

data = randn(2,samples)

figure
subplot(1,2,1)
plot(data(1,:),data(2,:), '.');
subplot(1,2,2)
histogram(data,500);
covariance = cov(data);
disp(covariance);
