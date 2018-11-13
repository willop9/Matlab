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
% test loops versus vectoried on 3 outout neural network

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% in neural betwork often have to calculate sum in input  mutiplies by weights
% can support multiple outputs
% y = WX

% example 10 input column vector
X = [ 1 2 3 4 5 6 7 8 9 10]';

% 10x3  weights matrix
W = [10 11 12 13 14 15 16 17 18 19;  20 21 22 23 24 25 26 27 28 29;  30 31 32 33 34 35 36 37 38 39;];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate y = WX  in a loop
% could do this a lot more simply - this is an example
len = length(X);

% loop over all outputs
outputs = size(W, 1);
for oidx = 1:outputs
    runningSum = 0;
    for idx = 1:len
        yElement = W(oidx, idx) * X(idx);
        runningSum = runningSum + yElement;
    end
    y(oidx,1) = runningSum;
end

disp('loop calculation: y=')
disp(y)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate y = WX  using matrix (vector) mutiplicatins
% this is much simpler!

% still just one line to compute y
y = W * X;

disp('vectorized calculation: y=')
disp(y)

disp('note that size(W) = ');
disp(size(W))
disp('and sizeX) = ');
disp(size(X))

