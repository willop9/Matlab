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
% test simple plot demo

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate a 1x12 matrix of esample datapoints
% organized rows x colums
% row vector
data = [1 3 8 4 2 6 9 7 3 4 3 2];

disp('check size');
disp(size(data))
disp('data = ');
disp(data)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find the sum - NB: nansum is more robust!
% sum Sum of elements.
% S = sum(X) is the sum of the elements of the vector X. If X is a matrix,
% S is a row vector with the sum over each column

% find the sum - NB: nansum is more robust!
dataSum = sum(data);
dataSum


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find the max - NB: nanmax is more robust!
% For vectors, max(X) is the largest element in X

% find the max - NB: nanmax is more robust!
dataMax = max(data);
dataMax


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find the min - NB: nanmin more robust!
dataMin = min(data);
dataMin


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%B = sort(A) sorts in ascending order
dataSorted = sort(data);
dataSorted

% also returns the rearrangement indices
[Y I] = sort(data);
I


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find instances of element value > 2
% this rerues the indecies where this is true
fidx = find(data(:) > 2);

disp('print out indices where value > 2 ');
disp(fidx)

disp('print out values where value > 2 ');
disp(data(fidx))


