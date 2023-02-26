---
layout: default
title: NIAC | Skylights, Lava Tubes and Caves
nav_order: 1
parent: Research and Notes
last_modified_date: 2023-02-25 14:30 IST 
---

# Technologies Enabling Exploration of Skylights, Lava Tubes and Caves
{: .no_toc}

**NIAC - NASA Innovative Advanced Concepts**

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---
## Metadata

- **Title:** Technologies Enabling Exploration of Skylights, Lava Tubes and Caves
- **URL:** [https://ntrs.nasa.gov/api/citations/20160010091/downloads/20160010091.pdf](https://ntrs.nasa.gov/api/citations/20160010091/downloads/20160010091.pdf)
- | Whittaker, William. _Technologies enabling exploration of skylights, lava tubes and caves_. No. HQ-E-DAA-TN63846. 2012. |

## Highlights & Notes

### Abstract

- Robotic exploration of skylights and caves can seek out life, investigate geology and origins, and open the subsurface of other worlds to humankind.
- Planetary voids present perilous terrain that requires innovative technologies for access, exploration and modeling.
- The research results are compiled to "Spelunker", a prototype mission concept to explore a lunar skylight and cave.

### Introduction

- Subsurface caverns may be the best place on Mars to find life.
- They can provide a window into a planet's geology, climate, and even biology.
- Skylights and the voids below are so unknown that it is too risky to send astronauts to explore them without prior robotic reconnaissance and modeling.
- The robots that venture into caves must leap, fly, or rappel into voids, traverse rubble, navigate safely in the dark, self-power, and explore autonomously with little or no communication to Earth. Exploiting these features necessitates a leap of technology from current planetary missions, which land with large error ellipses in statistically safe terrain, rove slowly and cautiously across the surface, depend on the sun for power and light, and rely on constant human oversight and control.
- These results are compiled to generate “Spelunker”, a prototype mission concept to explore a lunar skylight and cave.

#### What is known about Planetary Caves?
{: .fs-4 }

- Lava tube caves are formed by volcanic activity; the top layer of a channel of lava cools and forms a crust, leaving a void space when the hotter lava in the center of the channel flows out.

![Marius Hills](https://i.imgur.com/7QPUxV9.png)

- Due to the lesser gravity, it is predicted that lava tubes on Mars or the Moon may be much larger in diameter than those found on Earth.
- Skylights1 , formed by cave ceiling collapse, can provide entrance into caves. Several skylights on the Moon and Mars have been characterized from orbital image data.

![Mare Tranquillitatis](https://i.imgur.com/Oe1QGyf.png)

- The diameters of Lunar skylights which have been studied, the diameters range from 49m (short diameter of Marius Hills skylight) to 104m (long diameter of Ingenii Skylight) and depths range from 38m (shallow end of Ingenii Skylight) to 107m (Tranquillitatis Skylight)
- This research speculated on planetary cave value by comparing to scientific knowledge gained by investigation of terrestrial caves. This study listed devices and infrastructure that are required to execute subsurface planetary exploration. Important aspects include communication networks, biological sensing, and drilling capabilities.
- (Dubowsky, Iagnemma, & Boston, 2006) proposed exploration of subsurface voids with a large team of expendable robots. These robots were self-contained spherical hopping robots weighing approximately a 100 g with a 100 mm diameter. The rationale behind this development is that wheeled rovers such as Sojourner or Curiosity are not well suited to navigate through extremely rough terrain or access highly sloped surfaces anticipated to be present in subsurface environments.
- Carnegie Mellon University has performed extensive research in this domain publishing algorithms to solve localization, feature extraction and scan matching problems in a cavern like environment.
- Venturing into unknown cave environments with no access to absolute localization methods such as GPS, a robot must solve the Simultaneous Localization and Mapping (SLAM) problem
- a fast variant of the Iterative Closest Points algorithm that registers 3D scans in a common coordinate system and re-localizes the robot.
- Zlot and Bosse coupled measurements from a spinning, scanning LIDAR with data from an inertial measurement unit to achieve SLAM from a moving platform that built a 3D model for 17km of mine tunnel.

#### Mission Concepts for Exploration of Skylights, Lava Tubes and Caves
{: .fs-4 }

- One such multi-mission architecture would be broken into three phases, the first phase being the flyover and surface investigation of a skylight and deployment of a sensor package to a skylight entrance. This sensor package would be lowered into the skylight and scan the portion of the lava tube within sensor range, providing valuable insight about the environment within the tube. The second phase sends mobile robots in to explore the lava tube or cave network. The third phase includes delivery of habitats, robots, and personnel to the tube for base construction.
- The goals are to: enter a lava tube cave via a skylight, explore the cave, and send back data that includes a model of the skylight and cave.

**Planetary Cave Insights That Impact Mission Architecture**

- Science objectives are also important to consider when planning what parts of the cave to investigate, what sensors are required, and how far a robot must travel inside a cave to gather useful data
- Mission architectures for exploration of skylights, caves and lava tubes must consider both the value of information gained by using a given exploration strategy and the possibility of contaminating scientifically important sites with that strategy.

**Mission Architecture Issues and Options**

- There are five main issues that any mission for planetary cave exploration must address: access to the cave, in-cave mobility, collection and processing of data for modeling and other scientific objectives, power, and communication.
- Even with lower gravity on order of one sixth (Moon) or one third (Mars) of Earth’s, planetary bodies are still substantial gravity wells, and precision propulsive landing requires significant fuel. Cave exploration requires power-conscious mission architecture, due to the lack of solar power underground.
- If a few manage to succeed, the mission succeeds. The downside of this many-robot architecture is that the robots must be very small, (in mass and volume), and very cheap in order for the mission to be feasible.
- Modeling in lava tubes requires active sensing, and due to the expected larger size of lava tubes on the Moon and Mars, sensors in these environments must have long range, which requires increased power. Technologies like active sensing may well provide a physical barrier to miniaturization.

**Mission Concept Details**

- Once at the bottom, the rover is able to navigate uneven, rocky terrain. Two segments can detach, enabling the resulting two-wheeled mini-rovers to independently and autonomously explore the skylight and surrounding lava tubes.
- Wireless power transmission can be achieved using laser-photovoltaic power beaming
- Beamed power can be transmitted without contact, wherever there is line-of-sight. This means that a cave exploring robot would not have to come all the way back to the tether end to re-charge, which could be a significant risk reduction if the tether end is located in rough, rubble-pile terrain.
- The Spelunker mission deploys a propulsive lander that flies over the skylight during descent, scanning the terrain with LIDAR and capturing reconnaissance imagery.
- A fourth robot, “Livewire,” makes a tethered descent into the hole. Livewire brings a connection to the lander’s radio, the capability to beam power, and camera and LIDAR sensors to provide reconnaissance and track Cavehopper robots.
- The Cavehoppers, powered by batteries, launch themselves into the skylight. They hop to navigate rubble on the skylight floor, and use wheels to drive when they encounter smooth floor.
- While driving and hopping, the Cavehoppers model their environment using cameras with active lighting and LIDAR sensing.

![Cavehopper plan](https://i.imgur.com/UzsSAzU.png)

#### Access and In-Cave Mobility

While skylights provide entry into caves, they lead robots to vertical descents, traverses over significant rubble, and unpredictable obstacles (e.g., rock piles from partial ceiling collapses). A robot large enough to drive over any obstacle is unlikely to fit into narrow passages.

#### Power and Communication Configuration

Specialized robotic technologies and morphologies are needed to address the unique power and communication challenges presented by subsurface environments. To explore skylights and lava tubes, these robots must overcome various difficulties, including: 
- Extended periods without access to solar power 
- Limited accessibility to communication 
- Operating exclusively in a dark environment

Tunnels, caves and Tubes block communication requiring full autonomy

#### Configuration Development and Case Study

1. Spherical Hopping Microbots
2. Multi segment Tethered Robot
3. Legged Tethered Robot
4. Snake Tethered Robot
5. Cavehopper
6. Climbot
7. Elevator
8. Propulsive Flying Robot
9. Telescoping Ball Robot
10. Prism Bot
11. Rope Climbing

