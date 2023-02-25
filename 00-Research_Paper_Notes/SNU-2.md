---
layout: default
title: SNU Robot-2 | Magic Ball SMA
nav_order: 9
parent: Research and Notes
last_modified_date: 2023-02-25 14:06 IST 
---

# The Deformable Wheel Robot Using Magic Ball Origami Structure
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Metadata

- **Title:** The Deformable Wheel Robot Using Magic-Ball Origami Structure
- **URL:** [https://asmedigitalcollection.asme.org/IDETC-CIE/proceedings-abstract/IDETC-CIE2013/55942/V06BT07A040/255501](https://asmedigitalcollection.asme.org/IDETC-CIE/proceedings-abstract/IDETC-CIE2013/55942/V06BT07A040/255501)
- | Lee, D, Kim, J, Kim, S, Koh, J, & Cho, K. "The Deformable Wheel Robot Using Magic-Ball Origami Structure." _Proceedings of the ASME 2013 International Design Engineering Technical Conferences and Computers and Information in Engineering Conference_. _Volume 6B: 37th Mechanisms and Robotics Conference_. Portland, Oregon, USA. August 4–7, 2013. V06BT07A040. ASME |

[Youtube](https://www.youtube.com/watch?v=EiInnP8RzFI){: .btn .btn-purple}

## Highlights & Notes

### Abstract

- THe deformable wheel robot is made using the ball shaped waterbomb origami patter, so called magic-ball pattern.
- The magic-ball origami pattern is a well-known pattern that changes its shape from a long cylindrical tube to a flat circular tube.

### Introduction

![pattern](https://i.imgur.com/zBVMZpg.png)

- By using this origami structure, the deformable wheel can be built without using many mechanical parts; the wheel is built with a single piece of sheet, with specific folds.
- The origami wheel was fabricated by laser machining on paper with polyimide film and deformation of wheel was achieved by shape memory alloy coil spring actuator and passive spring

#### Design
{: .fs-4 }

- The pattern is composed of 3 x 8 basic patterns

![Final pattern](https://i.imgur.com/0OSSnLw.png)

- For using this structure as a wheel, a spoke structure which connects the wheel structure with a shaft is needed. Moreover, for deformation of the wheel, the spoke design based on origami which acts as linkage, joint and slider is required

#### Actuation
{: .fs-4 }

- In deformation of the wheel, passive spring and shape memory alloy (SMA) coil spring actuator were used antagonistically. The fact that SMA coil spring actuator has high energy density and simple structure makes it possible to design a simple wheel deforming mechanism

![actuation using sma](https://i.imgur.com/LnvEbt5.png)

- When SMA is activated by current, it goes through transformation from martensite to austensite phase and it pulls the surface of the wheel and shrinks the radius of the wheel. 
- DRIVING
	- Was achieved by electric motor. For current driving in SMA coil spring on the wheel, a slipring, a mechanical component that electrically connects a rotating part with a non-rotating part was used. 

#### Fabrication
{: .fs-4 }

- In wheel fabrication, a paper with polyimide film (Kapton) was used
- However, a paper is weak in shear stress, and it is easy to be torn by small force. Although the paper is cheap and common material, it is dangerous to use the paper as a wheel material. For reinforcing the property of the paper, polyimide film which has an adhesive layer on one side was used

![Paper with polyimide film](https://i.imgur.com/aWDHait.png)

- 2 methods are suggested
	- First one is to punch holes on vertex points where high stress is concentrated. 
	- Second one is to cut the fold line in stitch shape

#### Other Components
{: .fs-4 }

- The whole structure of the robot is in Fig. 19. The body of the robot was made by acrylic plate machined by laser cutter and other connecting parts were made by rapid prototyping machine (ProJet HD3000). Two lithium-polymer batteries (7.4 V, 700 mA each) were used; one is for control circuit and motor and the other is for SMA heating. The controller of the robot was Atmel’s Atmega128, and wireless communication was achieved by Zigbee (Maxstream XB24).
- The electric motor (DnJ RA12WGM) was installed for normal driving. The current for SMA was driven by MOSFET (On semiconductor NTR4501N) and the slipring (Pan-link Tech. PSR-M6) was used for current transmission to the wheel. For deformation of the wheel, the SMA coil spring actuator made by Dyn. Flexinol wire with dia. 10 mil was used.

### Experimental Result

- The diameter of the wheel changes from 7-cm (in normal state) to 5.5-cm (in deformed state) which shows 21.5% of decreases.