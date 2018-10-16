% example4lecture06.m

% Get rid of Matlab-stuff you might not want:
clear all
close all
clc


figure(1)

% Intensities scaled to [0 1].
% A value of 1 and anything above is treated as fully saturated 
% (for a value of 0 similar reasoning):
X = im2double(imread('testpat1.png'));% read input image
[min(X(:)) max(X(:))] % vector with max and min value
    
imshow(X); % min value=0 assumed, max value=1 assumed
% And then: value<=0 -> rendered as black,
% value>=1 -> rendered as white.


figure(2)

H = 1/9 * [1 1 1; 1 1 1; 1 1 1]; % kernel
Y = imfilter(X,H); % output image
[min(Y(:)) max(Y(:))] % vector with max and min value

imshow(Y) ; % min value=0 assumed, max value=1 assumed
% value<=0 -> shown black, value>=1 -> shown white.


figure(3)

H = 1/12 * [-1 -1 -1; 2 2 2; -1 -1 -1]; % kernel
Y = imfilter(X,H); % output image
[min(Y(:)) max(Y(:))] % vector with max and min value

imshow(Y) ; % min value=0 assumed, max value=1 assumed
% value<=0 -> shown black, value>=1 -> shown white.


figure(4)
imshow(Y,[]);
% min value=min(Y(:)) is used,
% max value=max(Y(:)) is used
% value <=min value -> rendered black,
% value >=max value -> rendered white.

