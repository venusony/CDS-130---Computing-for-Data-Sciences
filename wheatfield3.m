
% PROGRAM:  wheatfield3.m
% AUTHOR:  Joseph A. Marr
% DATE OF LAST MODIFICATION:  15 APR 2013

% PURPOSE:  To deomonstrate the basics of stochastic simulation
% for CDS-130.  This program appears in a sequence demonstrated
% in the presentation "Introduction to Modeling, III:  Stochastic
% Models and Monte Carlo Methods."  Companion programs are
% wheatfield1.m and wheatfield2.m

% This program introduces the concept of multiple simulations,
% and user defined inputs from the keyboard.  The program also
% introduces the use of an external function call.


%-------------------- SYSTEM ADMIN -----------------------------

clear;clc;
rng('shuffle')                                    %initialize rng

%-------------------- MODEL PARAMETERS -------------------------

number_of_expts = input('Enter the number of experiments:  ');
chance_of_sun = input('Enter the monthly chance of sun:  ');
birth_sunny = input('Enter the sunny growth rate:  ');
birth_cloudy = input('Enter the cloudy growth rate:  ');
lost_to_Puccinia = input('Enter the bushels lost per month to Puccinia:  ');
death = 0;
results = zeros(1,number_of_expts);        %results vector
P(1) = 1000;                               %initial condition
deltat = 1;                                %time step

%-------------------- OUTER SIMULATION LOOP --------------------
for expt = 1:number_of_expts
   
   
   %-------------------- INNER SIMULATION LOOP ----------------- 
   for t = 1:10
      if (rand <= chance_of_sun)
         P(t+1) = P(t) + deltat*(birth_sunny-death)*P(t);  %compute
         P(t+1) = P(t+1) - lost_to_Puccinia;               %correct
      else
         P(t+1) = P(t) + deltat*(birth_cloudy-death)*P(t); %compute
         P(t+1) = P(t+1) - lost_to_Puccinia;               %correct
      end
   end
   results(expt) = P(11);
   
   
end

%-------------------- OUTPUT STATISTICAL REPORT -----------------
statistical_report(results);          %use "statistcal_report.m"


%-------------------- VISUALIZE RESULTS ------------------------
hist(results,8);                     %plot histogram of results

title('Stochastic Wheatfield Harvest Yield With User Input',...
   'FontName','Arial','FontSize',12,'FontWeight','Bold')
xlabel('Total Bushels of Wheat','FontName','Arial',...
   'FontSize',10,'FontWeight','Bold')
ylabel('Frequency (Count)','FontName','Arial',...
   'FontSize',10,'FontWeight','Bold')
set(gca,'FontName','Arial','FontSize',10)