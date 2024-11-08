% Venus Onyango
% February 9, 2024
% Week04A.m
clear; clc
% This code uses a FOR loop to iterate through the values
P(1) = 65;
for t = 1:15
    P(t + 1) = P(t) + 0.5 * P(t);
end
P
length(P)