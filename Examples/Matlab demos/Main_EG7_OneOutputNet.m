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
% test loops versus vectoried on single outpt neural network

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% in a neural network often have to calculate sum of a weighted input vector
% y = WX

% example 10 input column vector
X = [ 1 2 3 4 5 6 7 8 9 10]';

% example 10 weights row vector
W = [10 11 12 13 14 15 16 17 18 19 ];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate y = WX  in a loop
% could do this a lot more simply - this is an example
len = length(X);
runningSum = 0;
for idx = 1:len
    yElement = W(idx) * X(idx);
    runningSum = runningSum + yElement;
end
y = runningSum;
disp('loop calculation: y=')
disp(y)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate y = WX  using matrix (vector) multiplication
% this is much simpler!

%  just one line to compute y!
y = W * X;

disp('vectorized calculation: y=')
disp(y)

disp('note that size(W) = ');
disp(size(W))
disp('and sizeX) = ');
disp(size(X))


