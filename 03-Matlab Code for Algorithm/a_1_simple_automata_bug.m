% @author - Swarup Tripathy
% We start by loading an obstacle field to challenge the robot

load house;
about house;   % matrix is an example of occupancy grid 

% list of named places within the house
place

% Assumptions:
% 1. robot operates in a grid world and occupies one grid cell
% 2. robot is capable of omnidirectional motion and can move to any of its
% eight neighboring grid cells
% 3. it is able to determine its position on the place which is a
% nontrivial problem

% we create an instance of the bug2 class
bug = Bug2(house);

% The bug2 algorithm does not use the map to plan a path – the map is used by the simulator to provide sensory inputs to the robot.

bug.plot();     % to display robot's environment

% to simulate using 'query' command and the arguments are start and goal
% position of the robot within the house.
bug.query(place.br3, place.kitchen, 'animate')  

% bug.query(place.garden, place.kitchen, 'animate')  % this takes very very loooong time

p = bug.query(place.br3, place.kitchen)
about p


