clear; clc;

birth = 0.0725; % Birth rate 
death = 0.0325; % Death rate 
deltat = 1; % Time step is 1 month
P = 1450; % Initial population
population_trend = P;

for t = 1:29
 P = P + deltat * (birth - death) * P;
 P = P + 18; % Add lab-bred salmons monthly
if mod(t, 12) == 9
 P = P + 33; % Add salmons every September
end
 if mod(t, 2) == 0
 P = P - 17; 
 end
if t == 16
 P = P - 19; % disease on the 16th month
end

P = floor(P);
population_trend(end+1) = P;
end

disp(population_trend);

plot(population_trend);
xlabel('Time (months)');
ylabel('Salmon Population');
title('Salmon Population Trend Over 29 Months');