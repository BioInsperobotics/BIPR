---
layout: default
title: Mobile Robot PRM
nav_order: 8
parent: Algorithms
last_modified_date: 2023-02-14 16:52 IST
---

# Mobile Robot PRM - Probabilistic Roadmap Method

Pseudo code is mentioned below
To build the following maze pattern.

- robotScenario - generates a simulation scenario consisting of static meshes, robot platforms, and sensors in a 3-D environment. 
- updateRate = 5 – determining the step size for advancing the robot simulation step by step
- adding Mesh to the scenario having a type “box” with wallColor defined and IsBinaryOccupied is defined to be true with a defined position and size.
- lightangle – spherical position of light
- view – 3-D graph viewpoint specification
- 3d map is converted to binaryOccupancyMap having arguments
    - Scenario
    - GridOriginInLocal
    - MapSize
    - MapHeightLimits

![3d environment](https://i.imgur.com/VaijFpB.png)

- Define start and goal pos
- Number of nodes are defined for PRM
- Planner is defined along with connection distance
- findpath – Find an obstacle free path between two points
- We define the robot arrival time at first waypoint to be 0
    - We define the robot arrival time at last waypoint to be 0 + (numWaypoints - 1)
- To generate a waypoint trajectory with waypoints from planned path
    - waypointTrajectory – returns a System Object, TRAJ, that generates a trajectory based on the specified waypoint POINTS and times T.
        - POINTS – is an N-by-3 matrix that specifies the times at which the trajectory crosses the corresponding waypoints
        - SampleRate – Sample rate of the trajectory(Hz)
        - TimeOfArrival – Time at each waypoint (seconds)
            - Column vector
        - Waypoints – Positions in the navigation coordinate system (m)
            - N by 3 matrix
        - ReferenceFrame – Reference frame of the trajectory
            - ‘ENU’ – East North Up
            - ‘NED’ – North East Down

| Original Occupancy map| Inflated Occupancy map |
| ![Original binary occupancy map](https://i.imgur.com/nLLHXKA.png) | ![Inflated binary occupancy map](https://i.imgur.com/kc48cln.png) |

- Adding robot to the scenario
    - Loading a robot “clearpathHusky”
    - Create robot platform in scenario
        - Name
        - Created scenario
        - RigidBodyTree is specified as loaded robot
        - BaseTrajectory – trajectory for robot platform base motion is specified as the defined waypointTrajectory
    - Control simulation rate
    - We initially define the status of robot moving to be false
- Final function is defined inside a while loop 
    - While we advance in the scenario
        - We wait for simulation rate
        - We look for the current pose
        - If there is no nan for the currentPose
            - Implies that robot is in the scene and performs the simulation
            - Robot should start moving
        - Break, once the robot reaches goal position

## Output

![PRM on Map](https://i.imgur.com/9YG2T1A.png)

The image below displays the 'clearpathhusky' robot following the path as was obtained from PRM

>note: video to be added.

![clearpathhuskyrobot](https://i.imgur.com/mSS796Y.png)