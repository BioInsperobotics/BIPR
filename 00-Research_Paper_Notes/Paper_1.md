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

### What is known about Planetary Caves?
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

### Mission Concepts for Exploration of Skylights, Lava Tubes and Caves
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

### Access and In-Cave Mobility

While skylights provide entry into caves, they lead robots to vertical descents, traverses over significant rubble, and unpredictable obstacles (e.g., rock piles from partial ceiling collapses). A robot large enough to drive over any obstacle is unlikely to fit into narrow passages.

### Power and Communication Configuration

Specialized robotic technologies and morphologies are needed to address the unique power and communication challenges presented by subsurface environments. To explore skylights and lava tubes, these robots must overcome various difficulties, including: 
- Extended periods without access to solar power 
- Limited accessibility to communication 
- Operating exclusively in a dark environment

Tunnels, caves and Tubes block communication requiring full autonomy

### Configuration Development and Case Study

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

![Comparison](https://i.imgur.com/6J91ON2.png)


### Selected Configuration
{: .fs-4 } 

The configuration and exploration scenario resulting from design, analysis and trade study is the Cavehopper with a separate tethered robot (Livewire) to supply power and communication.

#### Access and Mobility
{: .fs-3 }

- Legged robots have been proposed for navigating rough terrain, carefully stepping over obstacles that stop a wheeled robot of comparable size. They are still limited by obstacles that exceed a certain fraction of their height, and by potential leg obstruction or entrapment.
- The Sand Flea robot5 hops to overcome large obstacles and drives in areas with more benign terrain. This approach is ideal for lava tube caves, where there are large expanses of relatively flat floor between piles of rubble from ceiling collapse. The Sand Flea platform has demonstrated hopping 8m in the air on Earth to leap buildings and cliffs from a start on flat ground.
- During flight, the Cavehopper robot uses an IMU to track its attitude and controls pitch by using its wheels as control moment gyros.
- Piston-actuated hopping can be powered by internal combustion with a fuel and oxidizer system (like Sand Flea), pneumatics (like RATS), or mechanical energy storage such as a spring.
- On planetary bodies with an atmosphere, pneumatic actuation or compressed air could provide rechargeable hopping.

#### Power and Communication Configuration
{: .fs-3 }

- Livewire makes a tethered descent into a Skylight. Livewire tether creates a connection to the lander’s communication and power on the surface.
- In addition, cameras on-board Livewire could provide reconnaissance and track Cavehopper robots for improved localization.
- Livewire transmits the Cavehoppers’ data up the tether to an antenna on the lander, which transmits to a relay satellite or directly to Earth.

{: .note}
**Laser / Power Beaming** enables recharging of Cavehopper robots from a solar powered lander. Power beaming is under development by several groups including LaserMotive, who won the NASA Power Beaming Challenge and are presently working for NASA to design the architecture to use lasers to launch rockets and power satellites, and, eventually, power lunar bases

#### Autonomy and Control
{: .fs-3 }

- Cavehopper picks a spot and plans a trajectory that will contact the ground at that location but, due to its compliant wheels, it will likely bounce away from the target spot upon landing.
- The needed technology development is planning for safe hopping, using a **contingency planning** architecture to guarantee safe operation in uncertain terrain. Contingency planning is a probabilistic approach to generating action in the presence of uncertainty.

### Design for Planetary Cave Sensing
{: .fs-4 }

- Planetary caves are an untouched domain for robotic perception.

{: .note }
Sensor design includes considerations for traditional subsurface robots – such as total darkness, low power, and limited comms - coupled with the operational difficulties in space - such as scale, distance and hardening.

- Voids on the Moon and Mars are expected to be tens to hundreds of meters across and kilometers in length, considerably larger than most mines, tunnels and caves on Earth where state-of-the-art optical sensing for robots is deployed.
- Unfortunately, satisfaction of these criteria with active sensing - both range sensors like LIDAR and intensity sensors like cameras - is limited by physical laws. The well-known inverse square relationship necessitates an exponential increase in illuminant power for increasing range.

> **INVERSE SQUARE LAW**: The intensity of radiation is inversely proportional to the square of distance.
> As distance increases, intensity decreases.

- Prior work of this group at Carnegie Mellon University developed a class of techniques for enhancing 3D mapping by fusing camera and LIDAR data along called Lumenhancement
- The key idea is an understanding of the appearance of environments – in terms of reflectivity, surface distributions and light transport- and to utilize this knowledge in constraining features in imagery.

> Lumenhancement, which is the creation of ultra-dense 3D models by utilizing the camera as a geometry sensor.

- A general model for fusing raw LIDAR and image data into super-resolution range images using a Markov Random Field (MRF) was explored in (Diebel & Thrun, 2005).
- Thus, traditional intensity MRF techniques for super-resolution cannot be used in planetary spaces.

### Lunar Cave Analog Modeling Experiment
{: .fs-4 }

- The analog environment is a “tunnel” inside a steel mill over 200 meters in length and 7 meters wide, with a natural rugged dirt and rock floor. The covered roof of the steel mill served as a high tunnel ceiling.
- Multiple test runs were performed with Cave Crawler traversing the test site along the 200 meter stretch. The objectives of these tests were to investigate the applicability of the rover configuration to a planetary environment, including navigation capability and ability to capture and process data in varied lighting conditions. The robot had no problem moving along the terrain and over obstacles.

### Missions
{: .fs-4 }

- **Lunar Robotic Precursor** | A robotic mission to the lunar surface demonstrating precision, safe landing on the Moon. 
- **Spelunker Lunar Mission** | The Spelunker mission concept at a lunar skylight. 
- **Subsurface Mars Mission** | The Spelunker mission concept, as refined by lunar experience, applied to exploration of a Mars skylight.