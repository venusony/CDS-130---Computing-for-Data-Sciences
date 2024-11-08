% Venus Onyango
% February 27, 2024
% Week07E.m
% Calculate account balance trend using the population equation
birth = 0.0085; % Interest rate per month
death = 0; % No fee
deltat = 1;  % Time step (1 month)
P(1) = 1350.0; % Initial deposit 

for t = 1:41 % Total months for the study 
P(t+1) = P(t) + deltat * (birth - death) * P(t);

% Periodic correction for withdrawal at the end of every July
 if mod(t, 12) == 7
 P(t+1) = P(t+1) - 60.0;
 end
end

plot(0:41, P);
xlabel('Months');
ylabel('Account Balance ($)');
title('No-Cap Money Market Account Balance Trend');