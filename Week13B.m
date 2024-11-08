%Venus Onyango
%April 19 2024
%Week 13B
%Code is going to show account balance over time
clear; clc;

interest_rate = 0.0028;
withdrawal = 640.00;
bonus = 500.00;
balance = 11520.00;
months = 1:55;

for month = months
    balance = balance * (1 + interest_rate);
    if mod(month, 2) == 0
        balance = balance - withdrawal;
    end
    if mod(month, 12) == 0
        balance = balance + bonus;
    end
    balance_history(month) = balance;
end

plot(months, balance_history);
title('Account Balance Over Time');
xlabel('Month');
ylabel('Account Balance');
