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
% test simple data and structures demo

% clear all variables
clear all

% clear workspace
clc

% close all open figs
close all

% ask for help on a Matlab function
help clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate matrix of ones
N = 3;
M = 2;
% ones(M,N) or ones([M,N]) is an M-by-N matrix of ones
dataOnes = ones(N, M);
dataOnes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate matrix of zeros
N = 3;
M = 2;
% ones(M,N) or ones([M,N]) is an M-by-N matrix of ones
dataZeros = zeros(N, M);
dataZeros

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generate scalar variables
% semicolons after expressions prevent values from displaying in command window
A = 10;
B = 20;

% write command window with disp function
disp('Note skalar values ate 1x1 matrices!');
disp('A=')
% set matrix size and display
disp(size(A))
disp('B=')
% set matrix size and display
disp(size(B))


% can add
C = A + B;

% can divide
D = A - B;

% can multiply
E = A*B;

% can divide
F = A/B;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% build row vector
rowVector = [1 2 3 4];
disp('rowVector size = ')
disp(size(rowVector));
disp('rowVector = ')
disp(rowVector);

% build column vector
% can transpose with '
columnVector = [1 2 3 4]';
disp('columnVector size = ')
disp(size(columnVector));
disp('columnVector = ')
disp(columnVector);

% can also use semicolons to add rows
% build column vector2
columnVector2 = [1; 2; 3; 4;];
disp('columnVector2 size = ')
disp(size(columnVector2));
disp('columnVector2 = ')
disp(columnVector2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% build 2x2 matices
M2x2 = [1 2; 3 4;];
disp('M2x2 size = ');
disp(size(M2x2));
disp('M2x2 = ');
disp(M2x2);

% build 3x3 matices
M3x3 = [1 2 3; 4 5 6; 7 8 9;];
disp('M3x3 size = ');
disp(size(M3x3));
disp('M3x3 = ');
disp(M3x3);


% build 3x6 matices
M3x6 = [1 2 3; 4 5 6; 7 8 9;  10 11 12;  13 14 15;  16 17 18;];
disp('M3x6 size = ');
disp(size(M3x6));
disp('M3x6 = ');
disp(M3x6);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% can concatenate variables in similar way
% here add in extra columns
M11 = [M2x2 M2x2];
disp('M11 size = ');
disp(size(M11));
disp('M11 = ');
disp(M11);

% can decide how concatenation takes place too
% now add in extra rows
M11C = [M2x2; M2x2;];
disp('M11C size = ');
disp(size(M11C));
disp('M11C = ');
disp(M11C);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% replicating matrices

% consider dataset
data = [ 1 2; 3 4;];

% B = repmat(A,M,N) creates a large matrix B  
% consisting of an M-by-N tiling of copies of A
M = 2;
N = 2;
repData = repmat(data, M, N);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% We can also define stucture to group data together
s.A = 10;
s.B = 20;
s.M2x2 =  [1 2; 3 4;];
s.label='Demo label';

% show structure fields
s


