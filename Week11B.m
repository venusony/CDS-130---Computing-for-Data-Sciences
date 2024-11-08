% Venus Onyango
% April 24 2024
%This code is going to create a color map.
clear; clc

mycolormap = [ 0, 1, 1; % cyan
   0, 0, 0; % black
   1, 1, 0; % yellow
   0, 0, 1]; % blue

% Array A 
A = [0, 1, 2, 3, 0 ;
   0, 1, 2, 3, 0;
   0, 1, 2, 3, 0 ;
   0, 1, 2, 3, 0 ;
   0, 1, 2, 3, 0] ;

colormap(mycolormap)
imagesc(A)
axis square