% Venus Onyango
% February 23, 2024
% Week06A.m
%% This code is going to calculate the value of a property changes over time.
clear; clc;

birth = 0.05;
death = 0.0045;
P(1) = 1950.0;
deltat = 1;

for t = 1:12
P(t+1) = P(t) + deltat * (birth - death) * P(t);
end

years = 1:13;
plot(years, P);
title('Property Value Growth Trend');
xlabel('Year');
ylabel('Property Value ');
grid on;
