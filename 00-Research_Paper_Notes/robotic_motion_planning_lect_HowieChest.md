---
layout: default
title: Howie Chest - RMP
parent: Research and Notes
nav_order: 2
---

# Robotic Motion Planning Lectures by Howie Chest
{: .no_toc}
to update
{: .fs-6 .fw-300}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Chapter 1 - Introduction

- Shakey the robot
    - STRIPS based A* planner for navigating to a goal.
    - Wireless radio and video camera.
- Some books to refer:
    - Principles of robot motion: theory, algo and implementation – H Choset…
    - Planning algo – Steven Lavalle
    - Probabilistic Robotics – S.Thrun, W.Burgard
    - An Intro to AI/Robotics- Robin Murphy

## Chapter 2 - Bug Algorithms

- The Bug1 and Bug2 algorithms are among the earliest and simplest sensor-based planners with provable guarantees.
- These algorithms assume the robot is a point operating in the plane with a contact sensor or a zero range sensor to detect obstacles.
- These algorithms require two behaviors: move on a straight line and follow a boundary.
- Essentially, the Bug1 algorithm formalizes the “common sense” idea of moving toward the goal and going around obstacles. The robot is assumed to be a point with perfect positioning (no positioning error) with a contact sensor that can detect an obstacle boundary if the point robot “touches” it.

![bug1](https://i.imgur.com/ryErbJG.png)

### Bug 2 algorithm
- Similar to bug1, bug2 algorithm also behaves the same way but the circumnavigation around the obstacle until it reaches a new point on the m-line closer to the goal than the initial point of contact with the obstacle.
- At first glance, it seems that Bug2 is a more effective algorithm than Bug1 because
the robot does not have to entirely circumnavigate the obstacles; however, this is not
always the case

![bug2](https://i.imgur.com/j3jvQqb.png)

- Thus, as the “complexity” of the obstacle increases, it becomes increasingly likely that Bug1 could outperform Bug2
- In fact, Bug1 and Bug2 illustrate two basic approaches to search problems. For each obstacle that it encounters, Bug1 performs an exhaustive search to find the optimal leave point. This requires that Bug1 traverse the entire perimeter of the obstacle, but having done so, it is certain to have found the optimal leave point.
- In contrast, Bug2 uses an opportunistic approach. When Bug2 finds a leave point that is better than any it has seen before, it commits to that leave point. Such an algorithm is also called greedy, since it opts for the first promising option that is found.
- When the obstacles are simple, the greedy approach of Bug2 gives a quick payoff, but when the obstacles are complex, the more conservative approach of Bug1 often yields better performance.

![bug1 and bug2 comparison](https://i.imgur.com/RHl6r7a.png)

### Tangent Bug algorithm

- It serves as an improvement to the Bug2 algorithm in that it determines a shorter path to the goal using a range sensor with a 360 degree infinite orientation resolution. Sometimes the orientation is called Azimuth.


<img alt="Tangent Bug" src="https://i.imgur.com/FbcS0Zk.png"/>
<img alt="Tangent Bug_2" src="https://i.imgur.com/KpYsBvg.png"/>
<img alt="Tangent Bug_3" src="https://i.imgur.com/UxEmPpm.png"/>


- Here the robot invokes a motion-to-goal behavior until it encounters the first obstacle at hit point H1. Unlike Bug1 and Bug2, encountering a hit point does not change the behavior mode for the robot.
- The robot continues with the motion-to-goal behavior by turning right and following the boundary of the first obstacle. The robot turned right because that direction minimized its heuristic distance to the goal
