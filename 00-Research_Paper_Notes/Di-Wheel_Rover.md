---
layout: default
title: Di-Wheel Rover | Jaluro
nav_order: 12
parent: Research and Notes
last_modified_date: 2023-03-5 12:30 IST 
---

# SYSTEM DESIGN AND CONTROL OF A DI-WHEEL ROVER
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Metadata

- **Title:** System Design and Control of a Di-Wheel Rover
- **URL:** [https://www.researchgate.net/profile/John-Koleosho/publication/334504114_System_Design_and_Control_of_a_Di-Wheel_Rover/links/61708614c10b387664c874dd/System-Design-and-Control-of-a-Di-Wheel-Rover.pdf](https://www.researchgate.net/profile/John-Koleosho/publication/334504114_System_Design_and_Control_of_a_Di-Wheel_Rover/links/61708614c10b387664c874dd/System-Design-and-Control-of-a-Di-Wheel-Rover.pdf)
- | Koleosho, John, and Chakravarthini M. Saaj. "System design and control of a di-wheel rover." _Towards Autonomous Robotic Systems: 20th Annual Conference, TAROS 2019, London, UK, July 3–5, 2019, Proceedings, Part II 20_. Springer International Publishing, 2019. |


## Highlights & Notes

### Abstract

- It is difficult to explore craters and crevasses using large six or four-wheeled rovers. Innovative designs based on smaller Di-Wheel rovers might be better suited for such challenging terrains. This paper presents the outcomes of a feasibility study on a Di-Wheel Rover for planetary exploration missions. This includes developing its chassis design based on the hardware and software requirements, prototyping, and subsequent testing.
- The results presented in this paper give a new insight into designing low-cost Di-Wheel Rovers and clearly, there is a potential to use Di-Wheel Rovers for future planetary exploration

### Introduction

- A well-designed rover is key to the success of any planetary exploration mission as the rover is expected to traverse rugged and unknown terrains with minimal inputs from the ground station.
- Thus, there is a rise in interest to design agile micro-rovers to explore such challenging terrains that are otherwise inaccessible to larger rovers
- In recent years, there have not been many well-known planetary rovers that have adopted a two-wheeled structure. One two-wheeled rover that has been developed for lunar exploration is the JALURO lunar robot developed within a lunar competition. This rover, however, has its chassis underslung between its wheels, which allows for immediate static stability, and has independently controlled motors useful for drive and steering manoeuvres.

![JALURO](https://i.imgur.com/rRh6sSb.png)

### Chassis of Di-Wheel Rover

![sensors present](https://i.imgur.com/JSoA5sL.png)

- The Di-Wheel Rover consists of four different sub-systems which are as follows: 
	- the Drive sub-system, 
	- the Steering Control sub-system, 
	- the Wireless Communication sub-system, and 
	- the Balancing Control subsystem.
- The HC-05 and L298N refer to the Bluetooth modules used, and the motor module used respectively
- The wheels used are pneumatic wheels with rubber spikes located on its surface area; this is used to provide extra friction for the tyres. These tyres are controlled by normal brushless DC motors with a rated speed of 320rpm.

### Experimental Analysis and Results

- A Proportional-Derivative (PD) controller was designed for balancing this Di-Wheel Rover, however, a Proportional (P) controller was designed and used for experimentation purposes. The control signal is fed to the actuators based on the error signal; in this case, the microcontroller will be sending Pulse-Width Modulation (PWM) signals to the DC motors (i.e. the actuators) via an H-bridge circuit and based on the magnitude of the error signal.
- the actuators will move at the correct speed and direction in order to maintain good balancing performance and a stable Di-Wheel Rover.

#### Structural Analysis 
{: .fs-4}


##### Controller Type

- The types of controller that were implemented for this study were P- Proportional gain controller and PD- Proportional Derivative gain controller. Software for these controllers was constructed in the Arduino IDE and was written in C++. They were then uploaded to the Arduino microcontroller, via a serial communications port available within the PC.
- PID- Proportional Integral and Derivative controller was not used in this study as the I- Integral gain was purposefully avoided. The integral gain has the property of reducing steady-state error to zero, which in turn decreases the speed of the controller’s response

##### Electrical Characteristics

- experimentation was carried out in order to observe the behaviour of key quantities such as the DC motor current, DC motor voltage and the DC motor rpm

{: .note}
The PWM signals are basically numbers ranging between 0 – 255. They determine how much voltage is supplied to the DC Motors. The higher the PWM signal, the higher the voltage across the DC motors due to the linear relationship existing between these two quantities.

- Current through the DC motors and rpm of the motors share a linear relationship

