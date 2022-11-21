---
layout: default
title: Using RRT  
nav_order: 2
parent: Custom_Obstacle_Env
grand_parent: Algorithms
---

# Planning using RRT 

```matlab
clc; clear; 

env = load("environment.mat")
map = occupancyMap(env.emptyWorld);

% set the start and end goal pose

start = [1,13,0];
goal = [14,2,0];
hold on

% plot the start and goal points on the occGrid
% plot(x,y,color)

plot(start(1),start(2),'ro')
plot(goal(1),goal(2),'mo')
grid on;

% show start and goal headings

r = 0.5;

% BELOW: plots a straight line between (1,0) and (1,0.5)

plot([start(1),start(1) + r*cos(start(3))],[start(2),start(2) + r*sin(start(3))],'r-')
plot([goal(1),goal(1) + r*cos(goal(3))],[goal(2),goal(2) + r*sin(goal(3))],'m-')

bounds = [map.XWorldLimits; map.YWorldLimits; [-pi pi]];
ss = stateSpaceDubins(bounds);
ss.MinTurningRadius = 0.4;

statevalidator = validatorOccupancyMap(ss);
statevalidator.Map = map;
statevalidator.ValidationDistance = 0.05;

% creating the path planner

planner = plannerRRT(ss,statevalidator);
planner.MaxConnectionDistance = 1;
planner.MaxIterations = 30000;

planner.GoalReachedFcn = @checkIfGoal;
rng default
[pthObj, solnInfo] = plan(planner, start, goal);

show(map)

% show start and end goal in grid map

plot(start(1),start(2),'ro')
plot(goal(1),goal(2),'mo')
hold on
size_tree = size(solnInfo.TreeData)
for x = 1:size_tree(1)

% Plot the entire search tree
    plot(solnInfo.TreeData(x,1), solnInfo.TreeData(x,2),'.');
    drawnow
end
plot(solnInfo.TreeData(:,1), solnInfo.TreeData(:,2),'g-')
% Interpolate and plot the path
interpolate(pthObj,300);
plot(pthObj.States(:,1),pthObj.States(:,2),'r-','LineWidth',2)

function reached = checkIfGoal(planner, goalState, newState)
    reached = false;
    threshold = 0.1;
    if planner.StateSpace.distance(newState, goalState) < threshold
        reached = true;
    end
end
```