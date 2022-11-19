---
layout: default
title: RRT 
nav_order: 4 
parent: Algorithms
last_modified_date: 2022-11-19 17:15 IST
---

# Rapidly Exploring Random Trees

```matlab
% Example displays how to use the RRT algo to plan a path for a vehicle
% through a known map
clc; clear;

%% Loading an existing occupancy map

load("office_area_gridmap.mat","occGrid")
show(occGrid)
% set the start and end goal pose
start = [-1.0,0.0,-pi];
goal = [14,-2.25,0];
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

%% Defining the state space

% to specify the statespace of the vehicle and specifying the state bounds.
% The object limits the sampled states to feasible dubins curves for
% steering a vehicle within the state bounds.

bounds = [occGrid.XWorldLimits; occGrid.YWorldLimits; [-pi pi]];
ss = stateSpaceDubins(bounds);
ss.MinTurningRadius = 0.4;

%% Planning the Path

% RRT samples random states within the state space and attempts to connect
% the path. These states and connections need to be validated or excluded
% based on map constraints such that the vehicl doesn't collide with the
% obstacles.

statevalidator = validatorOccupancyMap(ss);
statevalidator.Map = occGrid;
statevalidator.ValidationDistance = 0.05;
% creating the path planner
planner = plannerRRT(ss,statevalidator);
planner.MaxConnectionDistance = 2;
planner.MaxIterations = 30000;
planner.GoalReachedFcn = @checkIfGoal;
% rng default
[pthObj, solnInfo] = plan(planner, start, goal);

%% Plot the path

show(occGrid)
hold on
hold on
size_tree = size(solnInfo.TreeData)

for x = 1:size_tree(1)
    % Plot the entire search tree
    plot(solnInfo.TreeData(x,1), solnInfo.TreeData(x,2),'.');

    drawnow

% pause(0.5)
end
plot(solnInfo.TreeData(:,1), solnInfo.TreeData(:,2),'g-')

% Interpolate and plot the path
interpolate(pthObj,300);
plot(pthObj.States(:,1),pthObj.States(:,2),'r-','LineWidth',2)

% show start and end goal in grid map
plot(start(1),start(2),'ro')
plot(goal(1),goal(2),'mo')
hold off

%% Defining a goalReached function

function reached = checkIfGoal(planner, goalState, newState)
    reached = false;
    threshold = 0.1;
    if planner.StateSpace.distance(newState, goalState) < threshold
        reached = true;
    end
end

```

![RRT animation gif](https://raw.githubusercontent.com/BioInsperobotics/BIPR/main/assets/images/algorithm/03-RRT_animation_doubt.gif)
