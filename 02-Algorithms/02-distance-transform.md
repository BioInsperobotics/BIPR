---
layout: default
title: Distance Transform
nav_order: 2 
parent: Algorithms
---

# Bug 2

<!-- [Code](){: .btn} -->

```m
% loading the house 
load house;

% to use the distance transform for robot navigation we create a DXform
% object, which is derived from the Navigation class

dx = DXform(house);

% create a plan to reach a specific goal
dx.plan(place.kitchen);

% visualisation whose grey level at any point indicates the distance from
% that point to the goal, in grid cells, taking into account travel around
% obstacles
dx.plot()

% disp('Travel from kitchen')
% dx.query(place.kitchen,'animate')
% pause(2)
% 
% disp('Travel from garage')
% dx.query(place.garage,'animate')
% pause(2)
% 
% disp('Travel from br1')
% dx.query(place.br1,'animate')
% pause(2)
% 
% disp('Travel from br2')
% dx.query(place.br2,'animate')
% pause(2)

disp('Travel from br3')
dx.query(place.br3,'animate')
pause(2)

% disp('Travel from nook')
% dx.query(place.nook,'animate')
% pause(2)
% 
% disp('Travel from mudroom')
% dx.query(place.mudroom,'animate')
% pause(2)
% 
% disp('Travel from patio')
% dx.query(place.patio,'animate')
% pause(2)
% 
% disp('Travel from study')
% dx.query(place.study,'animate')
% pause(2)
% 
% disp('Travel from garden')
% dx.query(place.garden,'animate')
% pause(2)
% 
% disp('Travel from driveway')
% dx.query(place.driveway,'animate')
% pause(2)
% 
% disp('Travel from living')
% dx.query(place.living,'animate')

% the plan is the distance map. Wherever the robot starts, it moves to the
% neighboring cell that has the smallest distance to the goal. The process
% is repeated until the robot reaches a cell with a distance value of zero
% which is the goal.

p = dx.query(place.br3);
numrows(p)
figure;
dx.plot3d(p)
```

![Distance Transform 1 figure](https://raw.githubusercontent.com/BioInsperobotics/BIPR/main/assets/images/algorithm/02-distance_transform.png)
![Distance Transform 1 in 3d figure](https://raw.githubusercontent.com/BioInsperobotics/BIPR/main/assets/images/algorithm/02-distance_transform-3d.png)