---
layout: default
title: 04-Software and Hardware Used | Specs
nav_order: 4
parent: Implementation
last_modified_date: 2023-05-05 18:15 IST 
---

# Software and Hardware Used | Specs

This chapter is responsible for presenting the Software and Hardware information for the project completion process. The information may differ depending on the changes presented by the developer at the time of year. Furthermore, the specifications which are mentioned here are simple to install from their primary sources.

---

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Software Used

### Oripa

ORIPA is a drawing software dedicated to designing the crease patterns of origami. The unique feature of ORIPA is calculation of the folded shape from the pattern. Oripa functionalities include: 
1. Various methods to input lines. 
2. Saving your crease pattern as a JPG or PNG image file 
3. Scaling of selected lines are offered

| Download Link | <a href="https://github.com/oripa/oripa">Oripa: Origami Pattern Editor</a> |

<a href="https://imgur.com/eCsfCKx"><img src="https://i.imgur.com/eCsfCKx.png" title="source: imgur.com" /></a>

The ”Magic Air Ball” pattern was made where ’red’ lines indicate ’mountain’ folds and ’blue’ lines indicate ’valley’ folds.

### Freeform Origami

This is a design software that allows users to interact with origami forms while altering the crease pattern of the model. The software can keep:
1. Developability (foldable from a piece of paper) 
2. Flat foldability (foldable into a flat shape) 
3. Planarity of facets (paper do not twist in 3D form) 
4. Point coordinate coincidence. 
5. Paper size

| Download Link | <a href="https://origami.c.u-tokyo.ac.jp/~tachi/software/">Freeform Origami</a> |

<a href="https://imgur.com/d03pvgx"><img src="https://i.imgur.com/d03pvgx.png" title="source: imgur.com" /></a>

The above image displays the origami fold which was exported from oripa and a folded simulation was being performed using Freeform origami.

### Origami Simulator

This app allows you to simulate how any origami crease pattern will fold. It may look a little different from what you typically think of as ”origami” - rather than folding paper in a set of sequential steps, this simulation attempts to fold every crease simultaneously. It does this by iteratively solving for small displacements in the geometry of an initially flat sheet due to forces exerted by creases.

| Web Link | <a href="https://origamisimulator.org/">Origami Simulator</a> |

| <a href="https://imgur.com/TSvM2d3"><img src="https://i.imgur.com/TSvM2d3.png" /></a> | <a href="https://imgur.com/kh5wqRf"><img src="https://i.imgur.com/kh5wqRf.png" /></a> |

### Rhinoceros 3D

Using Rhinoceros 3D CAD software for origami proved to be an immensely rewarding experience. The software allowed us to design complex origami patterns with precision and ease, granting us a degree of control over the final designs. By leveraging the software’s intuitive interface and powerful design tools, we were able to create intricate models that would have been difficult to achieve using traditional paper-folding techniques alone. 

We were fascinated by the degree of detail and realism that we could achieve in our designs. Overall, Rhinoceros 3D CAD software opened up new avenues for creativity in the world of origami, and we look forward to exploring its full potential in future projects.

| Download Link | <a href="https://www.rhino3d.com/download">Rhinoceros 3D: Rhino</a> |

### Grasshopper

A visual programming language and environment that runs within the Rhinoceros 3D CAD application. It is through grasshopper that we are able to build intricate patterns and view their foldability inside Rhinoceros 3D.

<img src="https://storage.ning.com/topology/rest/1.0/file/get/2654830933?profile=original" />

### Autodesk Inventor 3D

Autodesk Inventor is a powerful computer-aided design (CAD) software that has proven to be a valuable tool for engineers. With its comprehensive set of tools and user-friendly interface, the software allows us to create 3D digital models of objects, parts, and assemblies with incredible accuracy and precision. From simple components to complex machinery, Autodesk Inventor enables users to create, modify, and optimize designs quickly and efficiently. The software also offers a range of simulation tools that allow users to test and evaluate their designs in a virtual environment, identifying potential issues and optimizing performance before any physical prototyping takes place.

### ANSYS 

A powerful engineering simulation software package that provides a comprehensive array of tools for modelling, simulating, and analysing a wide range of physical phenomena. It enabled us to test concepts prior to real construction, saving time and money during the product development process. Ansys provides another great means to actually add your own material type given its Density, Poisson’s ratio, Yield Strength, Ultimate Strength, and other important factors. Ansys is considered as a standard in the industry for simulation and analysis, making it powerful tool for solving complex engineering problems. 

### MATLAB 

A numerical computing tool offering a high-level programming environment with prebuilt functions and toolboxes. The most unique aspect about this software is its robust graphics system for the presentation of data. We used this software as part of our study and analysis of several path planning algorithms. 

### Arduino IDE 

An open-source hardware and software platform used for programming development boards which in our case being Arduino UNO. A powerful tool for integrating electronic devices to achieve a desired goal. 

### Ultimaker CURA 

A free, open-source software for 3D printing that is simple to use for beginners. 3D printing was supported to us by the department of Mechatronics at Space Applications Centre, ISRO who were kind enough to let us build our own models to test around with.

---

# Hardware Specifications: Used

### Servo motor 

| Model | SG90 |
| Weight(gm) | 9 | 
| Operating Voltage | 3.0-7.2 |
| Operating Speed @4.8V | 0.12sec/60<sup>o</sup> |
| Operating Speed @6.6V | 0.1sec/60<sup>o</sup> |
| Stall Torque @ 4.8V | 1.2 Kg-cm |
| Operating Temperature (<sup>o</sup>C) | -30 to 60 | 
| Gear Type | Glass Fiber |
| Rotational Degree | 180 | 
| Cable Length (cm) | 25 |
| Length (mm) | 23 |
| Width (mm) | 12.6 | 
| Height (mm) | 30 |

### Potentiometer 

| Mechanical Rotational Angle | 300<sup>o</sup> ± 5<sup>o</sup> |
| Switch Rotational Angle | 35<sup>o</sup> ± 5<sup>o</sup> |
| Rotational Torque | 2 ~ 20mN-m |
| Rotation Stopper Strength | 0.7 N-m |
| Resistance Value | 10k-ohm |
| Total Resistance Tolerance | ± 20% |
| Rotational Life | 10000 cycles |
