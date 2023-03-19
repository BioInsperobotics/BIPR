
clc; clear;

%% Loading an existing occupancy map

env = load("custom_maze.mat")
map = occupancyMap(env.maze);


start = [1,20.5,0];
goal = [20,0.5,0];

hold on

% show start and goal headings
r = 0.5;

% BELOW: plots a straight line between (1,0) and (1,0.5)
plot([start(1),start(1) + r*cos(start(3))],[start(2),start(2) + r*sin(start(3))],'r-')
plot([goal(1),goal(1) + r*cos(goal(3))],[goal(2),goal(2) + r*sin(goal(3))],'m-')

%% Defining the state space

% to specify the statespace of the vehicle and specifying the state bounds.
% The object limits the sampled states to feasible dubins curves for
% steering a vehicle within the state bounds.

bounds = [map.XWorldLimits; map.YWorldLimits; [-pi pi]];
ss = stateSpaceDubins(bounds);
ss.MinTurningRadius = 0.4;

%% Planning the Path
% RRT samples random states within the state space and attempts to connect
% the path. These states and connections need to be validated or excluded
% based on map constraints such that the vehicl doesn't collide with the
% obstacles.

statevalidator = validatorOccupancyMap(ss);
statevalidator.Map = map;
statevalidator.ValidationDistance = 0.05;

% creating the path planner
planner = plannerRRT(ss,statevalidator);
planner.MaxConnectionDistance = 2;
planner.MaxIterations = 30000;
planner.GoalReachedFcn = @checkIfGoal;

% rng default
[pthObj, solnInfo] = plan(planner, start, goal);

%% Plot the path


show(map)
hold on

size_tree = size(solnInfo.TreeData)

% show start and end goal in grid map

plot(start(1),start(2),'ro')
plot(goal(1),goal(2),'mo')

p1 = plot(solnInfo.TreeData(:,1), solnInfo.TreeData(:,2),'.-')
hold on
for endPoint = 1:3:size_tree(1)
    p1.XData = solnInfo.TreeData(1:endPoint,1);
    p1.YData = solnInfo.TreeData(1:endPoint,2);
    drawnow
end

% Interpolate and plot the path
interpolate(pthObj,300);
plot(pthObj.States(:,1),pthObj.States(:,2),'r-','LineWidth',2)

% hold off

%% Defining a goalReached function

function reached = checkIfGoal(planner, goalState, newState)
    reached = false;
    threshold = 0.1;
    if planner.StateSpace.distance(newState, goalState) < threshold
        reached = true;
    end
end