---
layout: default
title: Using RRT*  
nav_order: 2
parent: Custom_Obstacle_Env
grand_parent: Algorithms
---

# Planning using RRT* 

```matlab
clc; clear;
env = load('environment.mat');
map = occupancyMap(env.emptyWorld);

% Start and End goal pose 

start = [1,13,0];
goal = [14,2,0];
map.show();
grid on;
hold on;
plot(start(1),start(2),'ro');
plot(goal(1),goal(2),'mo');

ss = stateSpaceSE2;
ss.StateBounds = [map.XWorldLimits;map.YWorldLimits;[-pi,pi]];

sv = validatorOccupancyMap(ss);
sv.Map = map;
sv.ValidationDistance = 0.1;

% Creating RRT* planner

planner = plannerRRTStar(ss,sv);
planner.MaxConnectionDistance = 0.5;
planner.MaxIterations = 30000;
[pthObj, solnInfo] = plan(planner,start, goal);
hold on;

size_state = size(pthObj.States)
size_tree = size(solnInfo.TreeData)

for i = 1:size_tree
 plot(solnInfo.TreeData(i,1),solnInfo.TreeData(i,2),'.-');
 drawnow
end

plot(solnInfo.TreeData(:,1),solnInfo.TreeData(:,2),'.-');
plot(pthObj.States(:,1),pthObj.States(:,2),'r-','LineWidth',2);
```