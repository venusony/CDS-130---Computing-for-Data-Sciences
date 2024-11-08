% Venus Onyango
% March 23, 2024
% Week 09D
% This code is going to show probability of getting each roll value as a
% floating point number
clear; clc;
A = zeros(1, 1500);

for n = 1:1500
dice1 = randi([1, 6]);
 dice2 = randi([1, 6]);
roll_value = dice1 + dice2;
 A(n) = roll_value;
end

histogram(A, 'Normalization', 'probability');
xlabel('Roll Value');
ylabel('Probability');
title('The Probability Distribution of Roll Values in Monopoly');