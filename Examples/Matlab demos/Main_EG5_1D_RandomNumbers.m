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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test random numbers

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% uniform distibution
samples = 1000000;
% draw samples unformly between 0 and 1 
% generates single dimensional dataset in  samplesx1 matrix
data = rand(samples,1);

% examine 1st 10 values
data(1:10)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% plot a histogram
bins = 100;

figure
hold on
% put on a title
h=title('Histogram of data drawn from uniform distribution');
h.FontSize=20;

% plot histogram
histogram(data,bins);
h=xlabel('Data value');
h.FontSize=20;
h=ylabel('Bin counts');
h.FontSize=20;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Draw samples from Gaussian distibution
samples = 1000000;

% draw samples from Gaussian distibution with zero mean and standard deviation 1
data = randn(samples,1);

% display 1st 10 values
data(1:10)

figure
hold on
% put on a title
h=title('Histogram of data drawn from Gaussian distribution');
h.FontSize=20;

% plot histogram
histogram(data,bins);
h=xlabel('Data value');
h.FontSize=20;
h=ylabel('Bin counts');
h.FontSize=20;





