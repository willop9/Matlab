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
% test ploting error bars

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% build a data generator class

% define number of samples
samples = 100;

% build  object and set samples
oDataGen = CDataGen(samples);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate a noisy sinewave

% get sine wave
amplitude = 3;
frequency= 1.7;
sampFreq = 100;
[dataS time]  = oDataGen.GetSineWave(amplitude, frequency, sampFreq);
oDataGen.PlotTimeWaveform(dataS, time);

% number of experiments
experiments = 3;
dataSet = [];   
for eidx = 1: experiments
    minVal= -1;
    maxVal = 1;
    dataU = oDataGen.GetUniformData(minVal, maxVal);
    dataSet(eidx,:) = dataS + dataU;
end

% plot all noise data
figure
hold on
title('All data across experiments')
plot(dataSet');
xlabel('samples')
ylabel('amplitude')

dataSetMean = nanmean(dataSet);
dataSetStd= nanstd(dataSet);

figure
hold on
h=title('Mean and standard deviation across experiments')
set(h,'FontSize', 20);
h=errorbar(dataSetMean, dataSetStd, 'r-');
h.LineWidth=1;
h=plot(dataSetMean, 'k-');
legend('Standard Deviation',' Mean')
h.LineWidth=2;
h=xlabel('samples')
set(h,'FontSize', 20);
h=ylabel('amplitude')
set(h,'FontSize', 20);
set(gca,'FontSize', 20);

