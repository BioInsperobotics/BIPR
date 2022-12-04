---
layout: default
title: Active Origami Book
nav_order: 5
parent: Research and Notes
last_modified_date: 2022-12-4 23:49 IST 
---

# Active Origami
{: .no_toc}


## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}


## Metadata

- **Book Title:** Active Origami - Modeling, Design and Applications
- Springer | Edwin A. Peraza Hernandez • Darren J. Hartl Dimitris C. Lagoudas | Link: [Active Origami, Springer Link](https://link.springer.com/book/10.1007/978-3-319-91866-2)

## Foldings

| **Miura Ori** | ![miura ori](https://i.imgur.com/4yI97AG.png) |
| :---: | :---: |
| **Magic Ball Pattern** | ![Magic ball pattern by Klein Alaine](https://archigami.files.wordpress.com/2014/07/origami_magic_balls_by_kleinalaine.jpg?w=510&h=339) |  
| **Yoshimura Fold Pattern** | ![Yoshimura fold pattern](https://i.pinimg.com/originals/c4/87/d7/c487d72f54868a280def9d140cf9bb1f.jpg) |



## Software Mentions

| [Free Form Origami](https://tsg.ne.jp/TT/software/) | [Rigid Origami Simulator](https://tsg.ne.jp/TT/software/) | [Eos-Project](https://www.i-eos.org/) |  |  |
| :---: | :---: | :---: | :---: | :---: |
|  |  |  |  |  |

## Highlights & Notes

- pioneers in computational origami such as Robert Lang, Erik Demaine, Koryo Miura, and Tomohiro Tachi have shown us that the principles of folding two-dimensional sheets into three-dimensional forms can lead to both beautiful art and practical engineering solutions
- most importantly, the supplemental material includes the full MATLAB® scripts that represent the implementation of mathematical theories derived

### Chapter 1: Introduction to Active Origami Structures

- Origami has the Japanese roots oru meaning folded, and kami meaning paper
- **Bigelow Expandable Activity Module** (BEAM)
	- an expandable habitat technology demonstration for the International Space Station
	    -  greatly decrease the amount of transport volume for future space missions
	    - require minimal payload volume on a rocket, but expand after being deployed in space to potentially provide a comfortable area for astronauts to live and work.
	    - ![BEAM NASA](https://www.nasa.gov/sites/default/files/thumbnails/image/beam-expansion-time-lapse-fast.gif)
	    -  provide a varying degree of protection from solar and cosmic radiation, space debris, atomic oxygen, ultraviolet radiation and other elements of the space environment
	    - Expandable modules, which are lower-mass and lower-volume systems than metal habitats, can increase the efficiency of cargo shipments, possibly reducing the number of launches needed and overall mission costs.
	    - Space station crew members will enter the BEAM three to four times a year for a few hours at a time. They will take measurements and monitor its performance to help inform designs for future habitat systems

	- Facts and Figures
		- In its packed launch configuration, the module will measure 7.09 feet long and just under 7.75 feet in diameter.
		- In its deployed, expanded configuration, the BEAM will measure 13.16 feet long and 10.5 feet in diameter, providing 565 cubic feet of habitable volume.
		- The BEAM’s mass is approximately 3,000 pounds (1,360 kg).
		- Mission duration is 2 years
- Potential engineering advantages of origami structures include compact storage/deployment capabilities (e.g., airbags), potential for reconfigurability, and reduction of manufacturing complexity (reduced part counts and improved assembly using collapsible/deployable components)
- Another space application of origami is the design of deployable solar arrays for spacecraft
- a robot fabricated using an origami-inspired technique whereby the structure starts as a planar sheet with embedded electronics and shape memory polymer (SMP) actuators, and then transforms under the application of heat into a functional robot via folding driven by SMP actuation 
- General Publications of advancements in origami theory and applications
	- International Meetings of Origami Science, Mathematics, and Education (OSME)
	- Journal of Mechanisms and Robotics

### 1.1 Active Materials

- active materials are those that convert various forms of energy (thermal, chemical, electromagnetic) into mechanical work
- Active materials that provide mechanical response under thermal stimulus include **shape memory alloys (SMAs) and shape memory polymers (SMPs)**
	- **SMAs** are metallic alloys that undergo solid-to-solid phase transformations induced by temperature and stress changes and during which they can recover seemingly permanent strains. Usually possess the highest actuation energy density, which is the product of the actuation stress and the actuation strain, among all active materials
	- **SMPs** possess the ability to recover extensions up to ≈100%. Additionally, they are inexpensive and lightweight. They typically have stiffness and strength values two to three orders of magnitude lower than their metal counterparts

### 1.2 Origami Design and it's simulation and visualization

- A method for determining the geometry and pattern of creased folds associated with a planar sheet that can fold towards a goal polyhedral surface is termed unfolding polyhedra
- A kinematic model for origami structures must consider 
	- The geometric definition of the sheet reference configuration and the associated fold pattern, 
	- the description of allowable deformations for the sheet, and 
	- the mapping between the reference and the current configurations of the sheet

---

### Chapter 2: Kinematics of Origami Structures with Creased Folds

- The only non-rigid body deformations of an origami sheet are achieved by rotating adjacent faces relative to one another along their connecting creased fold such that the sheet is not torn and does not self-intersect during such deformations. 
- Thus, the configuration of an origami sheet is fully described by the only kinematic variable associated with a creased fold, which describes the relative rotation between the two faces that are joined by such a fold and is denoted as fold angle. The fold angle θˆ i(t) is defined as π radians less the dihedral angle between the positive sides of the two faces joined by the ith creased fold.

{: .note } 
To look more into this topic

---

### Chapter 3: Unfolding Polyhedra Method for the Design of Origami Structures with Creased Folds

- This chapter addresses the method of unfolding polyhedra. The goal shape is represented in this method as a three-dimensional polygonal mesh, termed as the goal mesh. The objective in unfolding polyhedra is to find the shape and fold pattern of a planar sheet that can be folded towards a configuration that matches the goal mesh.
- The process of creating an origami structure with desired characteristics (i.e., a desired shape) is known as origami design

![unfolding polyhedra](https://i.imgur.com/NAAyDOj.png)

- A method for determining the shape and fold pattern of a planar sheet that can be folded towards a targeted polyhedral surface is known as unfolding polyhedra
- Usually, the unfolding is required to be a single sheet that does not have any overlaps and the cuts are required to be made exclusively on edges of the goal polyhedral surface. An unfolding that satisfies these characteristics is called a net
- unfolding polyhedra has found important industrial applications. Such applications include sheet metal folding as an efficient process for manufacturing of three-dimensional objects

