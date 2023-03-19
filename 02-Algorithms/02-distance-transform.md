---
layout: default
title: Distance Transform
nav_order: 2 
parent: Algorithms
---

# Distance Transform
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Working of Algorithm
<!-- [Code](){: .btn} -->
In this method, following should be carefully noted
1. Goal destination is labelled with a distance value 0
2. All other locations are labeled with high values
3. Algo begins at the destination and each iteration visits all locations adjacent to locations visited in the previous iteration.
4. Distance value for site 'i' adjacent to previously visited site 'j' is updated by

```
if map(i) occupied
    d(i) = inf
else
    d(i) = min[d(i), d(j)+c(i,j)]
```

where c(i,j) is the cost or distance with moving from site 'i' to site 'j'


## Matlab Code

```matlab
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

![Distance Transform 1 figure](https://i.imgur.com/VMzO7Wh.png)
![Distance Transform 1 in 3d figure](https://i.imgur.com/WHwAcPi.png)

## References
1. [Vladimir Tucakov - UBC](https://www.cs.ubc.ca/labs/lci/robots/papers/icra97/node9.html#:~:text=The%20distance%20transform%20expands%20around,until%20d%20%3D%200%20is%20reached.)