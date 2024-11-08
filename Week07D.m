% Venus Onyango
% February 27, 2024
% Week07D.m

%This code is going to due the population trend of Foxes in isolation in
%the Gobi.
P(1) = 1350; %Initial Populaton of the Foxes
birth_rate = 0.0575; % Birth rate
death_rate = 0.0475; % Death rate

deltat = 1; % Change over time
t = 20; % The number of years
immigration_year = 3; % The number of immigration years
immigration = 101; % The number of foxes immigrated.

for t = 1 : t
 P(t+1) = P(t) + floor(deltat * (birth_rate - death_rate) * P(t));
if t == immigration_year
P(t+1) = P(t+1) + immigration;
 end
end

plot(0:t, P);
xlabel('Years');
ylabel('Population');
title('Fox Population Trend Over 20 Years');