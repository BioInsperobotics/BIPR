---
layout: default
title: Reconfigurable Robot | SMA shape morphing
nav_order: 4
parent: Research and Notes
---


# Origami-Inspired Modules Enable A Reconfigurable Robot with Programmable Shapes and Motions
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}


## Metadata

- **Title:** Origami-Inspired Modules Enable A Reconfigurable Robot with Programmable Shapes and Motions
- **URL:** [https://ieeexplore.ieee.org/abstract/document/9794478](https://ieeexplore.ieee.org/abstract/document/9794478)
- Z. Chen, B. Tighe and J. Zhao | "Origami-Inspired Modules Enable A Reconfigurable Robot with Programmable Shapes and Motions," in IEEE/ASME Transactions on Mechatronics | vol. 27, no. 4, pp. 2016-2025, Aug. 2022, doi: 10.1109/TMECH.2022.3175145.
- **Index Terms:** Mechanism design, multimodal locomotion, reconfigurable robot, shape morphing 

Youtube Links to refer 🔽
{: .label .label-red } 
[Robot](https://www.youtube.com/watch?v=sSZaOLFihLM){: .btn .btn-purple} [Joint (SVJ)](https://www.youtube.com/watch?v=HOeQnwz8zmU){: .btn .btn-purple}


## Highlights & Notes

### Abstract

- To equip robots with multiple modes of locomotion
- Multimodal locomotion in existing robots
    - integrating multiple mechanisms 
    - cumbersome or challenging to control and actuate
- Shape morphing structures are utilized to enable reconfigurable and multifunctional robots
    - a novel origami-inspired module that can change its shape and motion
    - modules consist of joints that can be individually controlled to be soft or rigid, allowing the modules to reconfigure under actuation
    - developed a reconfigurable robot with four legs, each made from four serially connected modules
    - The robot can walk, crawl, and inch using the same mechanical structure. 

### Introduction

- Biological creatures can successfully locomote in unstructured environments using multiple modes of locomotion through actively changing their morphology
- we propose a new method for achieving multimodal locomotion by reconfiguring a robot’s leg for different functions (e.g., walking, crawling, inching, etc.) using the same mechanical structure

 ![Figure 1](https://i.imgur.com/HwWfcXJ.png)

- 4 legs:
    - each leg made of four origami inspired modules that can generate programmable shapes and motions
    - each module consists of two triangular plates, three vertical links, and three
diagonal links
    - Each diagonal link has a Shape-morphing and Variable-stiffness Joint (SVJ), which can 
        1) be bent into a desired angle and then hold the angle, and 
        2) alter its stiffness to become soft when heated up. 
    - Using origami for multimodal locomotion has been recently investigated due to its advantages of shape changing ability, fast fabrication, and bistability
    - our module is inspired by a specific type of origami pattern: the Kresling pattern
    - Although extensive work on variable stiffness elements exists, it remains underexplored on how to incorporate variable stiffness joints into mechanical mechanisms to generate programmable shapes or motions
    - We expect our proposed strategy can be extended to other mechanical structures (e.g., kirigami or linkages) to generate programmable mechanical structures for other applications, such as space structures and mechanical metamaterials

### Working Principle

- An SVJ is presented in our recent work, but we briefly describe its working principle here. It is made from a thermoplastic material (e.g., PLA) embedded inside an elastic tube

![Figure 2](https://i.imgur.com/fOqdVjN.png)

- A resistance wire wrapped outside the tube can heat up the material through Joule heating
- With such a design, an SVJ has two characteristics: variable stiffness and shape morphing. For variable stiffness, its bending stiffness can be controlled based on its temperature: once the SVJ’s temperature exceeds PLA’s glass transition temperature, the SVJ becomes soft, making the SVJ bendable
- For shape morphing, it can be heated, bent to a new shape, and maintain that shape without additional energy input after cooling down
- Because of the
elastic tube, a bent SVJ can also return to the original shape after heating up and cooling down again
- Note that a Kresling pattern generally has five or six pairs of mountain and valley creases, but in our module, we used three to simplify the structure
- For 1 Module:
    - Assuming the bottom plate is fixed, we can generate motions by pulling downward a tendon attached to the top plate’s center and routed through a hole at the bottom plate’s center, resulting in the top plate’s motion with respect to the bottom plate. Depending on which SVJs are soft, we can achieve three typical motions:
collapse, bend, and slant
        - Collapse: If all the three SVJs are soft, all the three diagonal links can bend. In this case, the top plate will rotate and move downward but keep parallel with the bottom plate. Eventually, the top plate will contact the bottom plate, thus the module is collapsed
        - Bend:  If two SVJs (e.g., SVJ1 and SVJ2) are soft, only two diagonal links can bend. The top plate will rotate to eventually become perpendicular to the bottom
plate.
        - Slant: If only one SVJ (e.g., SVJ2) is soft, then the top plate would be slanted and only one vertex of the top plate would contact a corresponding vertex of the bottom plate.
- More diverse shapes and motions can be accomplished if we connect multiple modules in series and selectively and independently control the stiffness of each SVJ in each module
- For 2 modules:
    - A tendon attached to the topmost plate is routed along the holes at the centers of middle plates to the fixed bottom plate. In this case, if all SVJs in the top module are soft, whereas all SVJs in the bottom one are rigid, pulling the
tendon will collapse the top module
    - On the other hand, if all SVJs in the bottom module are soft but all SVJs in the top one are soft, the bottom module will collapse when the tendon is pulled
-  The diagonal link is made from thermoplastic PLA filament (diameter 1.75 mm, Overture). An elastic silicone tube (BKVP51135-71.5; Vanguard) is placed in the middle. A resistance wire with a resistance of 3.1 Ω (shown in red in
Fig. 3) is wrapped around the silicone tube

![Figure 3](https://i.imgur.com/I4sw0pr.png)

- Using the resistance wire, it takes 20 s to heat up the SVJ to soften it with a voltage of 3 V. This heating process would consume an energy of 58 J.
- The plates are 3-D printed with PLA with two protrusions at each vertex. Each diagonal link is connected to the protrusions of both the top and bottom plates via silicone rubber tubes (LDVP51135-11; Vanguard), which serve as spherical joints
(see inset in Fig. 3). 
- The vertical links are hollow carbon fiber tubes (PCT125024; Goodwinds), allowing for the routing of electrical wires inside the links
- The lengths of vertical links and diagonal links are 38.5 and 48.5 mm, respectively. The length of each edge of the equilateral triangular plate is 45 mm. These dimensions are chosen to ensure the module can bend and collapse properly
- A tendon (shown in yellow in Fig. 3) is fixed to the top plate’s center. It goes through the hole at the bottom plate’s center to connect to a capstan driven by a DC motor (placed beneath the bottom plate, not shown in Fig. 3). When pulled by the capstan, the tendon will exert a downward force perpendicular to the top plate that will slant, bend, or collapse the module depending on which SVJs are soft

### Programmable Motions

<!-- #### Modeling the Motion
- to be done at PG -->

#### Robot Design
- The robot shown in Fig. 8(a) consists of four legs, a front body, rear body, central body, and the electrical parts. The four legs are individually actuated and controlled by their corresponding motor-capstan-tendon systems to perform specified gaits
- The central body is made from two pairs of two modules connecting the front and rear body on each side of the body. Each pair of modules are in opposite directions (i.e., CW and CCW). We choose such a design to facilitate the inching locomotion, which requires a linear contraction and extension of the robot body.
- An Arduino microboard is used as the microcontroller to control the motion of the five motors 
- Positions of the motors are fed back to the Arduino through a magnetic encoder (4760; Pololu) attached to the rear shaft of each motor. PID control is used to ensure a constant speed of the motor, with the help of the position feedback.

![Figure 4](https://i.imgur.com/diumOzv.png)

### Discussion
- Such adaptive robots will be suitable for search-and-rescue operations in disaster areas. In such unstructured environments, an adaptive robot can potentially adjust its body heights for walking with different speeds, shrink its body to walk through narrow spaces, reconfigure its legs’ orientation to crawl below a crack, inch inside a pipe, or reconfigure two legs as arms to deliver medicals to survivors.
- Therefore, we need to minimize the number of SVJs by investigating which SVJs are required to switch between soft and rigid based on the desired locomotion modes. Some joints can be always rigid or soft, which does not require an SVJ. Also, the relatively long time required for the cooling down of the SVJs can be significantly reduced if the SVJs are applied in underwater environment

