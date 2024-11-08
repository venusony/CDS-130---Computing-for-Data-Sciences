% Venus Onyango
% February 27, 2024
% Week07C.m

%This code is going to give as an increasing sequence of integers from 104
%to 142 that are divisible by 12
counter = 1;
for i = 104 : 142
    if mod(i, 12) == 0
        m(counter) = i;
        counter = counter + 1;
    end
end


