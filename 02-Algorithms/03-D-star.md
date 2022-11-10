---
layout: default
title: D* 
nav_order: 3 
parent: Algorithms
---

# D* Algorithm - Wikipedia

### Operation
Like Dijkstra's algorithm and A*, D* maintains a list of nodes to be evaluated, known as the "OPEN list". Nodes are marked as having one of several states:

- NEW, meaning it has never been placed on the OPEN list
- OPEN, meaning it is currently on the OPEN list
- CLOSED, meaning it is no longer on the OPEN list
- RAISE, indicating its cost is higher than the last time it was on the OPEN list
- LOWER, indicating its cost is lower than the last time it was on the OPEN list


---

# Focused D* Algorithm for Real-Time Replanning

## Metadata

- Title: The focused D* Algorithm for Real-Time Replanning
- URL: [robotics CMU](http://robotics.caltech.edu/~jwb/courses/ME132/handouts/Dstar_ijcai95.pdf)
- Anthony Stentz | Robotics Institute | Carnegie Mellon Institute 

## Highlights & Notes

### Abstract
- Finding the lowest-cost path through a graph is central to many problems, including route planning for a mobile robot
- As the robot acquires additional information via its sensors, it can revise its plan to reduce the total cost of the traverse.
- During replanning, the robot must either wait for the new path to be computed or move in the wrong direction; therefore, rapid replanning is essential.
- The D* algorithm (Dynamic A*) plans optimal traverses in real-time by incrementally repairing paths to the robot’s state as new information is discovered.

### Introduction
- The problem of path planning can be stated as finding a sequence of state transitions through a graph from some initial state to a goal state, or determining that no such sequence exists
- 