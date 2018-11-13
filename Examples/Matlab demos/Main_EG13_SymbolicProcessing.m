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
% generate some symbolic matrices
%  x = sym('x') creates symbolic variable x.

% build 4 symbolic variables
a = sym('a');
b = sym('b');
c = sym('c');
d = sym('d');

% now use these elements to build a 2x2 matrix
A2x2 = [a b; c d;];
% now examine A
disp('A2x2 size = ');
disp(size(A2x2));
disp('A2x2 = ');
disp(A2x2);

% now lets compute determinant of A2x2
det(A2x2)

% now lets compute the inverse of A2x2 * det(A2x2)
inv(A2x2) * det(A2x2)


% build 4 symbolic vaiables
a = sym('a');
b = sym('b');
c = sym('c');

d = sym('d');
e = sym('e');
f = sym('f');

g = sym('g');
h = sym('h');
i = sym('i');


% now use these elements to build a  2x2 matrix
A3x3 = [a b c; d e f; g h i;];
% now examine A
disp('A3x3 size = ');
disp(size(A3x3));
disp('A3x3 = ');
disp(A3x3);

% now les compute determinant
det(A3x3)

% now lets compute the inverse of A3x3
inv(A3x3) * det(A3x3)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% multiply some matrices

% build 4 symbolic vaiables
a = sym('a');
b = sym('b');
c = sym('c');
d = sym('d');

x1 = sym('x1');
x2 = sym('x2');

% column vector
X2x1= [x1; x2;];

% multiply AX
A2x2 = [a b; c d;];
A2x2 * X2x1


A2x2 * A2x2
