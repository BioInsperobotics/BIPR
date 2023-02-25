---
layout: default
title: SNU Robot-1 | Space Sail SMA
nav_order: 8
parent: Research and Notes
last_modified_date: 2023-02-25 10:55 IST 
---

# Deformable Wheel Robot Based on Origami Structure
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Metadata

- **Title:** Deformable Wheel Robot Based on Origami Structure
- **URL:** [https://ieeexplore.ieee.org/document/6631383](https://ieeexplore.ieee.org/document/6631383)
- | D. -Y. Lee, G. -P. Jung, M. -K. Sin, S. -H. Ahn and K. -J. Cho, "Deformable wheel robot based on origami structure," 2013 IEEE International Conference on Robotics and Automation, Karlsruhe, Germany, 2013, pp. 5612-5617, doi: 10.1109/ICRA.2013.6631383. |

[Youtube](https://www.youtube.com/watch?v=QNZaHC2z7uo){: .btn .btn-purple}

## Highlights & Notes

### Abstract

- All segments of the structure are connected by links-i.e., folding lines-and this linked structure provides advantages in terms of maintaining geometry and force transmissibility.
- With this property, the wheel diameter of the robot is reduced from 11 cm to 4 cm by four SMA coil spring actuators.

### Introduction

- The two important issues in deformable wheel design are building an effective wheel deforming mechanism and guaranteeing the stiffness in various states of the wheel.
- Each fold line and vertex can be regarded to be a mechanical components e.g., linkages and joints
- The movement of origami based morphing structures, however, can be estimated more exactly even in large deformation, and furthermore, it enables design for movement of the whole structure.
- The simplified assembly and manufacturing process not only reduces cost, time, and difficulty, but also increases the robustness of the system in aspect that small number of parts are used in mechanism.
- The origami structure is a linked structure and can maintain its stiffness and transmit forces through the links. 
- The wheel is built using paper reinforced with carbon fiber at the edges and two plate springs are embedded in the wheel to maintain stiffness and allow it to recover from contraction. Four SMA spring actuators are installed for contraction. 

{: .note}
The diameter of the wheel is 11 cm in its normal state and reduced to 4 cm when contracted

#### Wheel Design
{: .fs-4 }

**A. Wheel Structure**

- The wheel structure design was derived from the model proposed by Guest et al, which was originally developed for folding inextensible space sail membrane

![space sail design](https://i.imgur.com/aOrefn7.png)

- This structure has two main advantages. 
	- First is the shape maintenance; all of the wheel segments are linked together and enable the structure to maintain a circular shape independent of whether it is folded or not.
	- Second is the force transmissibility and the stiffness maintenance

**B. Actuation Mechanism**

- With regard to the first issue, the wheel should bear the weight of all components such as electronics, batteries and transmission. To maintain the desired shape under the loading condition, a component to maintain stiffness is required to prevent the wheel from unwanted deformation.

![space sail actuation](https://i.imgur.com/DK5PDbH.png)

- We used SMA coil spring actuators to satisfy these requirements.

> Contraction is active actuation and extension is passive actuation.

- When the SMA actuators are activated, the SMA actuators pull the ends of the structure and it leads to contraction of the wheel. When the SMA actuators are deactivated, the plate springs, extend the wheel to the original shape.

#### Electronics
{: .fs-4 }

- Atmel's microprocessor Atmega8 was used to implement the control system
	- 8 bit microcontroller and 23 programmable I/O lines and 16Mhz clock speed
	- Transistor (s9013) was used to drive a current to the motor and SMAs.
	- Zigbee communication protocol was used for remote control, which is specialised for simple and low power communication using UART.

{: .note}
In order to ensure the safety of the microprocessor, power source of the SMAs and the motor were separated from the microprocessor. 

- Both batteries were lithium polumer, and the battery voltage of the SMAs and motors(3 cell, 11.7V) are selected high due to effeciency.

{: .warning }
The power transmission from body to wheel for SMAs was one of the important design problem. The controller and batteries were on the body frame, and SMAs were on the rotating wheels. A slipring was adopted to solve this power transmission problem. A Slipring is electrical signal transmission tool between rotating and non-rotating parts.

- The wheel shaft was made by 3 mm carbon fiber square rod for easy assembly with the chain gear.

#### Prototype Specification
{: .fs-4 }

The body size of the prototype was 15 cm x 10 cm, and the weight of the robot was 260 g including batteries. The diameter of the undeformed wheel was 11cm. The robot could drive at a maximum speed of 23 cm/s in the unfolded wheel state

> The model can be used to design the actuators and select the plated springs. The second issue is the material. The main body of the wheel was made by a paper; however, there are many candidate materials for origami structure that can increase the durability and performance of the wheel.

