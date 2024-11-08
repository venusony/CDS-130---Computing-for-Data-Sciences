% Venus Onyango
% April 5 2024
% Week11C
% This assignment is going to create an image of Mario.
clear;clc
Mario = [0 0 0 0 0 0 0 0 0 0 0 0 0 0;
         0 0 0 0 1 1 1 1 1 0 0 0 0 0;
         0 0 0 1 1 1 1 1 1 1 1 1 0 0;
         0 0 0 3 3 3 2 2 4 2 0 0 0 0;
         0 0 3 2 3 2 2 2 4 2 2 2 0 0;
         0 0 3 2 3 3 2 2 2 4 2 2 2 0;
         0 0 3 3 2 2 2 2 4 4 4 4 0 0;
         0 0 0 0 2 2 2 2 2 2 0 0 0 0;
         0 0 0 1 1 5 1 1 5 1 1 0 0 0;
         0 0 1 1 1 5 1 1 5 1 1 1 0 0;
         0 1 1 1 1 5 5 5 5 1 1 1 1 0;
         0 2 2 1 5 6 5 5 6 5 1 2 2 0;
         0 2 2 2 5 5 5 5 5 5 2 2 2 0;
         0 2 2 5 5 5 5 5 5 5 5 2 2 0;
         0 0 0 5 5 5 0 0 5 5 5 0 0 0;
         0 0 4 4 4 0 0 0 0 4 4 4 0 0;
         0 4 4 4 4 0 0 0 0 4 4 4 4 0;
         0 0 0 0 0 0 0 0 0 0 0 0 0 0];
myColormap = [1.00 1.00 1.00;   % Background white
              0.80 0.00 0.00;   % Cap red
              0.68 0.56 0.40;   % Skin
              0.60 0.30 0.00;   % Hair brown
              0.27 0.13 0.04;   % Beard and shoe brown
              0.20 0.33 0.48;   % Jean blue
              1.00 0.98 0.00];  % Button yellow
colormap(myColormap);
imagesc(Mario);
