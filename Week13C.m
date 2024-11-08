%Venus Onyango
%April 19 2024
%Week 13C
%Code is going to show the game battleship
clear; clc;
size = 10 ;  % size of the gameboard (10-by-10)
boats = 7 ;  % number of boats
counter = 0 ; 
GB = zeros(size) ; 
while counter < boats
   row = randi(size) ; 
   col = randi(size) ; 
   if GB(row, col) == 0 % meaning that the spot is empty
      GB(row, col) = 1 ; 
      counter = counter + 1 ; 
   end
end
GB
disp('Game ON!')
% Add the game simulation below.
shotcount = 0;      % Start with no shots
while sum(GB(:)) < 2 * boats % While the sum of all values on the board is less than twice the number of boats
    row = randi(size);      % Pick a random row
    col = randi(size);      % Pick a random column
    shotcount = shotcount + 1;     % Make a shot and add it to the shot count
    if GB(row, col) == 1 % If the shot hits a boat at GB(row, col)
        GB(row, col) = 2;      % Turn the boat into debris (change the spot's value from 1 to 2)
        disp('Hit!');      % Output 'Hit!'
        disp(GB);      % Output GB
    end
end

disp('Game OVER!');     % Output 'Game OVER!'
disp(GB);     % Output GB
disp(shotcount);     % Output the number of shots made
