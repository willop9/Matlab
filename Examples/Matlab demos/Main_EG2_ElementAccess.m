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
% first lets generate a 4x3 matrix
% organized rows x columns
data = [1 3 8; 4 2 6; 9 7 3; 4 3 2];

disp('check size');
disp(size(data))
disp('data = ');
disp(data)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% can pick out a given row by selecting it
selectedRow = 2;
% notice the row selected and colon used to get all column elements
data(selectedRow, :)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% can pick out a given row by selecting it
selectedColumn = 1;
% notice the column selected and colon used to get all row elements
data(:, selectedColumn)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate a 2x4x3 matrix
% organized dataset index x  rows x columns

% reset dadaset matrix
dataSet=[];
% now add in is two different  4x3 matrices
dataSet(1,:,:) = [1 3 8; 4 2 6; 9 7 3; 4 3 2];
dataSet(2,:,:) = [1 3 8; 4 2 6; 9 7 3; 4 3 2] * 10;

disp('check size');
disp(size(dataSet))
disp('dataSet = ');
disp(dataSet)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% can pick out a given data matrix by selecting it
selectedMatrix = 1;
selection = dataSet(selectedMatrix,:,:);

% but notice size now 1x4x3!
disp('check size');
disp(size(selection))
disp('selection = ');
disp(selection)
% first dimension makes no sense
% set rid of it by squeezing the matrix


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% can pick out a given data matrix by selecting it
selectedMatrix = 1;
squeezedSelection = squeeze(dataSet(selectedMatrix,:,:));

%  size now 4x3!
disp('check size');
disp(size(squeezedSelection))
disp('squeezedSelection = ');
disp(squeezedSelection)


