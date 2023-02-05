---
layout: default
title: Puffer Robot
nav_order: 7
parent: Research and Notes
last_modified_date: 2023-02-05 10:55 IST 
---


# Pop-up Mars Rover with Textile-Enhanced Rigid-Flex PCB Body
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Metadata

- **Title:** Pop-up Mars Rover with Textile-Enhanced Rigid-Flex PCB Body
- **URL:** [https://www.pioneercircuits.com/wp-content/uploads/2019/03/PUFFER-PATENT-REPORT.pdf](https://www.pioneercircuits.com/wp-content/uploads/2019/03/PUFFER-PATENT-REPORT.pdf)
- | 2017 IEEE International Conference on Robotics and Automation (ICRA) Singapore, May 29 - June 3, 2017 |

## Highlights & Notes

### Introduction

PUFFER (Pop-Up Flat Folding Explorer Robot), a self-actuated pop-up rover being developed to provide a low-payload-cost mobility enhancement for future NASA missions.

- The surface of Mars, for instance, has revealed a host of high-science-interest sites such as lava tubes, caves, and recurring slope lineae (RSLs). Similarly, flybys of Jupiter’s moon Europa have revealed fascinating “chaos terrains” where the moon’s liquid ocean may be interacting with the icy surface.
- Accessing these science-rich extreme terrains will therefore require advances in robotic spacecraft mobility
- a palm-sized, origami-inspired wheeled rover that is designed to accompany larger spacecraft on future missions, serving as a mobility enhancement to provide access to new terrains
- The PUFFER rovers are constructed using a collapsible “pop-up” chassis that folds into a compact volume for stowage.
- PUFFER’s small size and folding chassis also provide unique mobility benefits that enable PUFFER to maneuver in extreme terrains inaccessible to the parent
- This partial collapsibility can also be used to lower the platform’s center of gravity for climbing steep inclines
- In future missions, when a parent spacecraft encounters terrains of interest that are better accessed with PUFFERs, it could eject one or more of the folded units, which unfold themselves on command. The parent then guides the PUFFERs into the new terrain, controlling them and receiving data from the instruments that they carry over a wireless radio
- This work builds on the well-established Smart Composite Microstructures (SCM) folding robot manufacturing paradigm used in the construction of numerous palm-sized robots such as RoACH and DASH 
- The paper presents a new manufacturing approach for implementing these types of robots using textile enhanced printed circuit board (PCB) technology and materials compatible with the Mars environment.
- Our work focuses on using the popup structure concept to implement a repeatably collapsible body. This collapsiblity has implications on the folding structure design, particularly on robustness of repeatedly cycled flexure joints, and we discuss how these are addressed through the new textile-enhanced rigid-flex PCB concept.

### Early Prototypes

- Pop up structure with 4 bar linkages 
    - **SCM proof of concept**
        - used a simple posterboard-polymer film laminated structure with polymer film serving as the hinges for the pop-up structure and the posterboard providing the rigid sections.
        - nitinol wire was used to spring-load the opposing four-bar linkages causing these to pop upright when the structure was released.
        - two pairs of small neodymium magnets were embedded in the structure at a location where they latch the opposing four bars together in an upright configuration.

	- <a href="https://imgur.com/1hi34Vv"><img src="https://i.imgur.com/1hi34Vv.png" title="source: imgur.com" /></a>

	- 4mm diameter brushed motors and acetal gears
        - motors were controlled wirelessly using a small remote control receiver with integrated motor drivers
        - Power was provided by a 90 mAh, 0.5mm thick lithium polymer battery

    - **First rigid-flex PCB chassis**
        - Implementing these robots from rigid-flex PCB chassis components is appealing since it allows the robot electronics to be integrated directly onto the robot body, allowing for a streamlined construction
        - Furthermore, polyimide-based flex and rigidflex circuit boards have been flown successfully on numerous Mars missions, making them a promising manufacturing solution for PUFFER and other Mars-bound folding robots.
        - This first iteration consisted of a two-layer flex circuit with stiffener material added to create the rigid board sections. The flex circuit was fabricated from a 50 micron thick polyimide substrate with 1 oz copper on both sides