---
layout: default
title: 01-Geometrical Analysis
nav_order: 1
parent: Implementation
last_modified_date: 2023-05-06 08:57 IST 
---

# Geometrical Analysis
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

The modeling of the structure begins by making two assumptions. First, the structure is supposed to have a symmetrical shape because if the forces are applied this structure becomes asymmetrical, but for the simplicity of calculations, assuming that the force effect is negligible. Second, the motion of folding occurs only in the folding lines and the facets are assumed to be always straight.

<a href="https://imgur.com/kRT4rS1"><img src="https://i.imgur.com/kRT4rS1.png" title="waterbomb_section_planes" /></a>

Assuming the length of AB = s

$$Coordinates \;of \;A(0,sin(\alpha),cos(\alpha)) \;and \;B(sin(\theta),s,cos(\theta))$$

The following constraint is obtained below relating $\alpha$ and $\theta$ 

$$cos(\alpha)cos(\theta)+s\times sin(\alpha) = 1$$
## Magic Air Ball Cross Section

On all of the above mentioned assumptions, performing the kinematic and structure analysis for the origami structure is developed. Below figures is plotted as joints and linkages of the origami wheel structure. 
1. R2 is the outermost radius of the wheel. 
2. R1 is the innermost radius of the wheel. 
3. 2b is the length of the fold line. 
4. L2 is the length from center line to the end of the wheel.

<a href="https://imgur.com/VhjSVeC"><img src="https://i.imgur.com/VhjSVeC.png" title="source: imgur.com" /></a>

XZ plane helps to observe radial or rotational symmetry; and YZ plane, shows the longitudinal or reflection symmetry The calculations which are displayed below are with respect to y-z plane

### Finding L2

$$L2 = b \times sin(\alpha) + 2b \times cos(\beta) + cos(\gamma)$$

$$\gamma = \frac{\pi}{2} - \beta$$

$$L2 = b \times sin(\alpha) + 2b \times cos(\beta) + \frac{b}{2} \times sin(\beta)$$

### Finding R2

$$R2 = 2b \times sin(\beta) + \frac{b}{2} \times sin(\gamma) + r$$

or

$$R2 = R1 + b \times cos(\alpha)$$

Below calculations are referred from x-z plane

### Finding L1

$$L1=a \times sin(\theta)+ a \times sin(\theta) = 2a \times sin(\theta)$$

### Finding R1

Here, CD = ED = EF = GF = a; and in triangle BDO

$$tan(\frac{\pi}{8}) = \frac{OD}{BO}$$

$$OD = a \times sin(\theta)$$

and 

$$BO = R1 + a \times cos(\theta)$$

After substituting the values 

$$tan(\frac{\pi}{8})=\frac{a \times sin(\theta)}{R1 + a \times cos(\theta)}$$

$$R1 = a(\frac{sin(\theta)}{tan(\frac{\pi}{8})} - cos(\theta))$$

### Finding R

$$sin(\frac{\pi}{8})=\frac{L1/2}{R}$$

$$R = \frac{L1}{sin(\frac{\pi}{8})}$$

In summary, the calculations dealt with two design constants r and b, and three variables $\alpha$, $\beta$ and $\gamma$ which are subjected to change for the wheel transformation to take place.

## MATLAB 

We used MATLAB to solve the geometrical equations to obtain a range of values

{: .warning }
Yet to be updated