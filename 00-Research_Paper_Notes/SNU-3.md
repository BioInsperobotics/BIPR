---
layout: default
title: SNU Robot-3 | SNUMax
nav_order: 10
parent: Research and Notes
last_modified_date: 2023-02-25 14:06 IST 
---

# Development of a Multi-functional Soft Robot(SNUMAX) and performance in RoboSoft Grand Challenge
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Metadata

- **Title:** Development of a Multi-functional Soft Robot(SNUMAX) and performance in RoboSoft Grand Challenge
- **URL:** [https://www.frontiersin.org/articles/10.3389/frobt.2016.00063](https://www.frontiersin.org/articles/10.3389/frobt.2016.00063)
- | Lee, Jun-Young, et al. "Development of a multi-functional soft robot (SNUMAX) and performance in RoboSoft Grand Challenge." _Frontiers in Robotics and AI_ (2016): 63. |

[Youtube](https://www.youtube.com/watch?v=okbn9mSqlgQ){: .btn .btn-purple}

## Highlights & Notes

### Abstract

- This paper introduces SNUMAX, the grand winner of the RoboSoft Grand Challenge. SNUMAX was built to complete all the tasks of the challenge
- SNUMAX has three key components: transformable origami wheels, a polymer-based variable stiffness manipulator, and an adaptive caging gripper.

### Introduction

- Soft robotics involves using compliant actuation and control strategies and soft materials to create robots with soft robotic features. 
- The challenge consisted of two test scenarios: terrestrial navigation and object manipulation. 
	- The terrestrial navigation tests mimicked the environmental conditions of an urban disaster area and tested robots’ ability to cope with rough terrain and navigate obstacles in order to help humans. 
	- The manipulation scenario involved three tests of robotic dexterity in handling objects in a range of situations
- The origami transformable wheel used in SNUMAX is the first transformable wheel to use soft materials. Using soft materials enables large deformation without the need for links and joints, and using origami patterning provides sufficient payload. 
- Designing tendon-driven mechanisms to actuate the main components of SNUMAX is the key to its successful operation. A tendon–pulley system that contracts both sides of the wheel allows wheel diameter to be increased or decreased.

### Design and Manufacturing

- SNUMAX is a four wheel drive robot that has transformable origami wheels, a PVSM, and an adaptable caging gripper.
- . The robot is 600 mm high and 270 mm long, and its width ranges from 450 to 600 mm (width is changed by wheel deformation). 
> PVSM: Polymer based Variable Stiffness Manipulator
- The PVSM is 450 mm long. To fulfill the challenge’s requirement that the robot fit within a 600-mm cube, the soft manipulator is tucked closely to the body. A camera mounted at the front of SNUMAX records operating situations and helps the pilot. The robot weighs 10.1 kg
- The robot’s tendon-driven actuating systems are driven by DC motors (DCX series, Maxon motor Ag.). The body of SNUMAX is made of acrylic plates, acrylic rods, and a chassis, all made by 3D printing (Objet260, Stratasys Inc.) using ABS-like material. 

#### Transformable Origami Wheel
{: .fs-4}

- The wheel can assume two final configurations: wider along its axis with small diameter and narrower along its axis with large diameter. Deformation of the wheel greatly increases maneuverability by enhancing the robot’s adaptability to various types of terrain
- A wheel built from soft materials can provide deformability and absorb impact but will have difficulty enduring a high payload
- To create the transformable wheel, eight units of the waterbomb origami pattern are repeated in a circumferential direction to make a circular rim shape, and three units of the pattern are repeated in the axial direction to make the support structure
- The wheel facets were made from 0.3-mm PET film, and the fold lines consist of fabric. The PET was patterned via laser machining, and gelatin films were used to align the segments.
- The width of the complete wheel changes from 200 to 110 mm, and the radius changes from 100 to 230 mm. Each wheel can bear more than 10 kgf.

![fold lines](https://i.imgur.com/G1twaf4.png)

- Transformation of the wheel is accomplished by changing the distance between the inner and outer wheel hubs via a basic wire–pulley mechanism. 
- One end of the wire is attached to the outer hub by a clamping component, and the distance between the hubs increases or decreases as the pulley pushes or pulls the wire. To attach the wire firmly to the wheel and prevent it from twisting, a two-layered-wire structure and a special clamping component were used. 
- Because the pulley broke frequently owing to the high tension that it needed to sustain, it too was given a modular design so that it could be quickly replaced during the challenge
- The two-layered-wire structure consists of a Kevlar wire covered first by a Teflon tube and then by a coil spring. The coil spring has low bending stiffness, but relatively high torsional stiffness.

![actuation](https://i.imgur.com/RAdaQp2.png)

- The clamping component consists of a thrust bearing and a figure-eight knot. The thrust bearing keeps the wire structure from twisting, and the figure-eight knot guarantees strong bonding between the wire structure and the wheel. A figure-eight knot is the proper choice for this bonding, since, the more the wire is pulled, the tighter the knot becomes

### Electric Circuit

- SNUMAX has three dual motor drivers (Sabertooth 2 ×  12, Dimension Engineering LLC.) for six DC motors (four for wheels and two for wheel deformation). The motor drivers communicate with the on-robot MCU (Arduino Due) by TTL serial communication.
- The signals were generated from the on-robot MCU. To avoid signal noise and simultaneously actuate all five linear actuators, a 0.2-μF ceramic capacitor was inserted between the MCU and each linear actuator

### Ascending and Descending Stairs 

- This task tested whether a robot has enough grip and torque to ascend and safely descend stairs. The test stairs had two 50-mmhigh steps. When radii of SNUMAX’s wheels were enlarged and the drive train was maximally powered, it ascended and descended the stairs while overcoming the weight of the robot
