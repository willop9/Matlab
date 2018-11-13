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
% test classes

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% build a data generator class

% define number of samples
samples = 10000;

% build  object and set samples
oDataGen = CDataGen(samples);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% get sine wave
amplitude = 10;
frequency= 1.7;
sampFreq = 10000;
[dataS time]  = oDataGen.GetSineWave(amplitude, frequency, sampFreq);
oDataGen.PlotTimeWaveform(dataS, time);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% get uniformly samples random data
minVal = -10.0;
maxVal = 10.0;
dataU = oDataGen.GetUniformData(minVal, maxVal);

% plot with a member funtion
bins=100;
oDataGen.PlotHistogram(dataU, bins);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% get Gaussian samples random data
meanVal=3;
stdVal=2;
dataG =  oDataGen.GetGaussianData(meanVal, stdVal);

% plot with a member funtion
bins=100;
oDataGen.PlotHistogram(dataG, bins);
