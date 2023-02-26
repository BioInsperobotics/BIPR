---
layout: default
title: SNU Robot-4 | The Final Design
nav_order: 11
parent: Research and Notes
last_modified_date: 2023-02-26 10:57 IST 
---

# Origami Wheel Transformer: A Variable-Diameter Wheel Drive Robot Using an Origami Structure
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Metadata

- **Title:** Origami Wheel Transformer: A Variable-Diameter Wheel Drive Robot Using an Origami Structure
- **URL:** [https://www.frontiersin.org/articles/10.3389/frobt.2016.00063](https://www.frontiersin.org/articles/10.3389/frobt.2016.00063)
- | Lee, Dae-Young, et al. "Origami wheel transformer: A variable-diameter wheel drive robot using an origami structure." _Soft robotics_ 4.2 (2017): 163-180. |

[Youtube](https://www.youtube.com/watch?v=2JUVGp6-A5E){: .btn .btn-purple}

## Highlights & Notes

### Abstract

- By changing the radius of its wheels, the robot becomes able to pass over not only high steps but also narrow gaps. In this article, we propose a novel design for a variable-diameter wheel using an origami-based soft robotics design approach.
- The wheel’s diameter can change from 30 to 68 mm, and it is light in weight at about 9.7 g. Although composed of soft materials (fabrics and films), the wheel can bear more than 400 times its weight.

### Introduction

- Soft robots attain infinite degrees of freedom from the soft materials of which they are made (e.g., elastomer and fabric), thereby achieving unique characteristics: dexterous motion, deformability, and adaptability to environments.

{: .note}
Using soft materials for a variable-diameter wheel accompanies two advantages—high deformability and ability to absorb impact, but inadequate stiffness and excessive degrees of freedom can impede a wheel’s functionality

- from a soft material where an origami pattern can be applied, which reduces the material’s excessive degrees of freedom and increases the structure’s stiffness.
- We used two types of facets—a rigid one and a flexible one—to adjust the wheel structure’s degrees of freedom. Instead of simply separating the facets and fold lines as in a conventional origami design, our method uses facets of different stiffnesses, allowing high design flexibility
- Although the proposed design loses one major advantage of soft robots, high adaptability provided by soft material’s high degrees of freedom, it provides three key advantages.
	- the structure can be built without lots of mechanical parts or a complex assembly process. A single sheet replaces most parts, and a folding part generates each joint. This reduces not only the fabrication cost for each part but also the time required for assembly
	- an origami structure can have high stiffness and impact capacity compared to its weight. In complex kinematic structures, the local distortion of links and joint alignments strongly affects how a structure moves.
	- an origami structure is scalable. The structure generates a joint by folding and this reduces friction between the links. 
- The robot can change the wheel diameter from 30 to 68 mm, allowing it to pass through a 50-mm gap and climb a 50-mm step

### Robot Design

- The diameter of the wheel is varied by changing the length of the wheel in the direction of the axis.
- To ensure low resistance force during winding, a material with low bending stiffness is preferred. However, a low-stiffness material is susceptible to twisting when the wheel rotates
	- To solve the problem, we used an anisotropic structure that has low bending stiffness and high torsional stiffness: a coil spring with a wire in its center. Coil springs have low bending stiffness and relatively high torsional stiffness, so the shaft can be wound up on the pulley without twisting. The wire prevents extension of the coil spring. The elastic band encircles the wheel to recover the original shape when the shaft tension is released.
	- Another issue with using a flexible shaft is the potential for wheel axis misalignment.
- **Solving Wheel axis misalignment while using a flexible shaft**
	- The outer hubs prevent over-deformation of the wheel. The inner hubs are assembled at the enlarged state, and in this configuration they function as a shaft. These components create a stable wheel configuration.
- For the path of the flexible shaft, the driving motors transmit rotation torque to the wheel via gears
- The robot has two deformable wheels on both sides and a carriage tail for the electronics and batteries. The tail structure is also necessary for obstacle climbing

> For driving the wheel, 1.5W DC motors (1224E 256:1; FAULHABER) were used, and for wheel deformation, the identical motor with an encoder was used.

#### Wheel Grouser Design
{: .fs-4 }

- Using a wheel grouser increases the robot’s ability to overcome obstacles by changing the shape of the wheel to function like a rotary leg.
- Because polyethylene terephthalate (PET) material was used for the facet, a chemical adhesive would not provide enough adhesive force
- We attached the grouser with a stapler and adhesive tape.

#### Electronics and Interface
{: .fs-4 }

- The control interface was built with a commercial WIFI camera module and an Arduino Nano controller. The WIFI camera module (P5206-2; HanJin Data) can be connected with a smartphone application (offered by HanJin Data) via WIFI, so the user can see real-time video and also send a command. 

![electronics](https://i.imgur.com/MLw6KCQ.png)

- The WIFI camera module provides user commands via UART communication using a preset data protocol. An Arduino Nano was used for the main control unit. Arduino Nano interprets user commands from the WIFI camera module and combines them with an encoder signal to control the motors

#### Fabrication
{: .fs-4 }

- A PET film (100 lm; Kolami) with a thermal adhesive on one side was chosen for the facets, and a plain weave mesh fabric was used for the folding part.

![fold lines](https://i.imgur.com/G1twaf4.png)

- Finally, a rubber band is wrapped around the wheel in the circumferential direction to apply restoring force after folding
- All structural components of the robot were fabricated with a 3D printer (Objet 260; Stratasys Ltd.). The communication module, cooling fan, and battery for the controller were placed on the head side, and the main controller and battery for the motors were placed on the carriage tail. 
- A PET cover was placed on the robot body to protect body components. The final robot, which weighs 278 g with batteries

#### Robot Performance
{: .fs-4 }

- Theoretical maximum enlarged diameter of the wheel is 70 mm without the grouser and 94 mm with the grouser, and theoretical minimum shrunk diameter of the wheel is 28 and 36 mm with the grouser. Each of the measured enlarged diameters is 68 and 90 mm, and each of the measured shrunk diameters is 28 and 36 mm

### Discussion

- As a result, we developed a lightweight wheel (about 9.7 g) that can deform in size by more than twice its original diameter and deliver a relatively high payload of more than 400 times its weight.
- Although the research is at the initial state in regard to practical use, we believe that the proposed concept has high potential to be a new type of airless tire based on origamiinspired deformable structure.
- There can be three barriers in expanding the application fields of this concept—deformation ratio, size limitation, and maximum payload.
- The proposed design used the identical repeated unit pattern and the repetition number is fixed by 3x8.
- Changing the shape of the unit pattern is also an interesting issue for improving the performance of the wheel. The square unit pattern can be replaced by rectangle or parallelogram. The variation of the unit pattern shape will allow the hub, support, and rim part to have their own functional design.
- The second topic is about the size limitation. Origami structure is basically scalable because of a frictionless joint, which is one of the important advantages of origami-based mechanism. The proposed wheel, however, has multiple stacking folding part and is also composed of multimaterial. The size limitation comes from material thickness and dissimilar material bonding. The thickness of the facet used in this research is about 100 micro m.
- In this research, a combination of PET and mesh fabric is used, but there are a variety of options for material selection, including carbon reinforced plastic plate, polycarbonate, ABS resin for the facet, and special purpose fabric such as aramid fiber, Kevlar, for the fold line layer.
- Because the collapse of the wheel is mainly caused by two reasons, material failure and delamination, the adhesive force is also an important factor for payload performance.
- The last topic is the hybrid patterning. We think that hybrid patterning is one of the unique advantages of the combination of soft robotic design approach with origami-inspired design approach