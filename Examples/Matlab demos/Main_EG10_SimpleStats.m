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

% test loops versus vectoried on 3 outout neural network

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First we generate a Gaussian distribution
samples = 10000;
meanVal = 10;
stdVal = 3;

% draw samples from Gaussian distribution with zero mean and standard deviation 1
% then scale to man and std
data = meanVal * ones(samples,1) + stdVal * randn(samples,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Generate a histogram of the data
bins=100;

figure
hold on
% put on a title
h=title('Histogram plot');
h.FontSize=20;
% plot x,y
histogram(data, bins)
h=xlabel('x-value');
h.FontSize=20;
h=ylabel('y-value');
h.FontSize=20;


 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate mean method 1 using loop

% init sum
 runningSum=0;
 
 dataPoints = length(data);
 
 % for each datapoint
 for idx = 1: dataPoints
    runningSum = runningSum + data(idx);
 end
 
 % calculate mean
 dataMean(1) = runningSum/dataPoints;

 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate mean method 2 using vectorized summer
dataMean(2) = sum(data)/length(data);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate mean method 3 using vectorized mean
dataMean(3) = mean(data);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate mean method 4 using vectorized mean
% this deals with not a number entries(NaN)

% e.g corrupt the dataset
data(1:10) = NaN;

% still works! - just uses valid values
dataMean(4)  = nanmean(data);

 % display all values
disp('dataMean = ')
disp(dataMean')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate std using vectorized mean
% this can deal with not a number (NaN)

% e.g corrupt the dataset
data(1:10) = NaN;

% can als calculate stabdard deviation
dataStd  = nanstd(data);

 % display 
disp('dataStd = ')
disp(dataStd')
