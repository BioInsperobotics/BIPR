---
layout: default
title: Algorithms
nav_order: 4
has_children: true
permalink: /02-Algorithms
---

# All about Algorithms 
{: .no_toc}
A Collection of numerous algorithms related to path planning.
{: .fs-5 .fw-300 }

## Motion Planning with Matlab

- “Motion planning” and “path planning” are often used interchangeably, but there is a key difference. Motion planning generates the vehicle’s motion as it changes position over time, whereas path planning only generates a path for the vehicle.
- Several functional pieces:
    - Environment map using SLAM(simultaneous localisation and mapping)
    - State(position and orientation) of the robot or vehicle
    - The set of transformations that could be applied to a robot is called the state space or the configuration space
    - The configuration space can include free spaces (in which the robot states are considered to be valid) and obstacle spaces (in which the robot states are considered to be invalid)
- example, in a self-driving car, the position of the car and its heading or orientation ollectively represent its state. For automated parking of a self-driving car, a map of the parking lot identifies the free and obstacle spaces, and the state space represents the set of all possible forward and reverse maneuvers defined using a motion model.

| PATH COST | OPTIMALITY | COMPLETENESS |
| --- | --- | --- |
| While a robot or vehicle is finding a path, each step it takes can be associated with a cost. The cost of traveling through free space is usually set as zero, and the cost of traveling hrough a space containing obstacles as infinity | A path planning algorithm is called optimal if it always finds an optimal path. For a path to be optimal, the sum of its transition costs (edge costs) must be minimal across all possible paths leading from the initial position to the goal position | A path planning algorithm is called complete if it takes a finite amount of time to find a Path (when one exists) and reports if no path exists. |

- Common Types of motion planning
    - Search Based Planning
        - Based on the way the search tree of graph is created
        - creates a searchable graph, with each vehicle state or configuration identified as a node. The graph expands from start to goal node using cost and heuristic-based approaches to find the shortest path.
    - Sampling based Planning
        - a search tree or road map is created by randomly adding nodes in the state space. Possible collision-free paths are found using a continuous motion model. Sampling-based planning often uses heuristics to explore the search space and bias the search direction. Once created, the tree or road map uses collision-checking or search methods to find the shortest path to goal.
        - Suitable for high-dimensional search spaces such as those used to find a valid set of configurations for a robot arm to pick up an object.
        - The probability of finding a solution (if one exists) converges to 1 if the density of the search tree brings the samples close enough together.
    - Global and Local path planning
        - Global path planning or map based planning
        - Involves finding an optimal path based on a priori knowledge of the environment. 
        - Algorithms plans an initial path that avoids known and static obstacles in the environment.
    - Local path planning or dynamic replanning
        - Recalculates the path to avoid unknown and dynamic obstacles.
        - They track the global plan and create local trajectories while avoiding the newly introduce obstacles.
- Four-Step motion planning workflow
    - Represent the state space
    - Define a state validator
    - Sample new states and check for validity
    - Represent a collection of valid states as path
- Representing the STATE SPACE

| State Space | Configuration | Environment | Application |
| --- | --- | --- | --- |
| `stateSpaceSE2` | (x,y,θ) | 2D | Holonomic Robots |
| `stateSpaceSE3` | (x,y,z,qw,qx,qy,qz) | 3D | Robot Manipulators |
| `stateSpaceDubins` | (x,y,θ) | 2D | Non-Holonomic vehicle with minimum turning radius |
| `stateSpaceReedsShepp` | (x,y,θ) | 2D | Non-holonomic vehicle with minimum turning radius |

- Defining a STATE VALIDATOR
    - based on the state space and corresponds to the map obtained from the SLAM algorithm
    - It checks the validity of a state or the motion between two sampled states. For example, a collision checker is a type of state validator that indicates when a robot state or configuration is in collision with an obstacle.

| State Validator | Type | Application |
| --- | --- | --- |
| `validatorOccupancyMap` | occupancyMap, binaryOccupancyMap | 2D occupancy map |
| `validatorVehicleCostMap` | vehicleCostmap | 2D occupancy map |
| `validatorOccupancyMap` | occupancyMap3D | 3D occupancy map |

- Sampling New States and Checking for Validity
    - randomly sample states in the defined state space and create an obstacle-free path  from start to goal using the state validator. Algorithms such as RRT and PRM use different sampling schemes to sample the states and create a search tree or road map.
- Selecting a Motion Planning Algorithm

Follow below ⬇
{: .label .label-green }

