---
layout: default
title: 03-Rack and Pinion
nav_order: 3
parent: Implementation
last_modified_date: 2023-03-08 19:37 IST 
---

# Everything About Rack and Pinion
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

### Why Rack and Pinion?

| **Application Consideration** | **Chain Drives** | **Rack/Gear & Pinion** | **Roller Pinion/Rack** | **Lead Screws** | **Ball Screws** | **Linear Motors** |
| **Accuracy** | Low | Low-High | High | Low | Low-High | High |
| **Backlash/Vibration** | Consider | Consider | Near Zero | Consider | Consider | Near Zero |
| **Acceleration** | Low | High | High | Low | Medium | High |
| **Speed** | Low | Medium | High | Low | Medium | High |
| **Load Capacity** | Medium | High | High | Low | High | Low |
| **Length** | Shorter | Long | Long | Shorter | Shorter | Moderate |
| **High Wear and Short Life** | Consider | Consider | Long Life | Consider | Consider | Long Life |
| **Maintenance** | Consider | Consider | Little to None | Consider | Consider | Little to None |
| **Noise Level** | High | Medium | Low | High | Medium | Low |
| **Dust and Dirt emissions** | High | Moderate | Low to None | Moderate | Moderate | Low to None |

Rack and Pinion was observed to be the best estimate while taking 3D Printing into consideration.

---

## Rack and Pinion

- A mechanical mechanism commonly used for converting rotary motion into linear motion. The system comprises of two main components: a gear called a pinion and a linear rack. The pinion, which is a small gear with teeth, engages with the rack, a long, flat bar with teeth along its length. When the pinion rotates, it moves the rack in a straight line, creating linear motion. This mechanism is widely used in various applications, including steering systems in automobiles, and is preferred due to its simplicity, efficiency, and compactness. 
- The rack and pinion system is highly efficient because the contact between the pinion and the rack provides a constant transfer of power without slippage or backlash. The compact design of the system makes it ideal for applications with limited space, such as in small vehicles. Furthermore, this system is highly reliable, as it does not require frequent maintenance and has a long service life.
- An important principle is that you realize that the calculation and selection (rack, pinion, gearbox and motor) is done by trial-and-error: you have a good chance that you have to do the calculations again with other parameters.

##### Mechanism Approach

Pinion is one of the most important aspect of the entire mechanism whose design approach depends on several factors, such as the application, the loads it will be subjected to, the material used, and the manufacturing process. However, here are some general steps that can be followed for the design of a pinion: 
1. **Determine the application requirements:** The first step in designing a pinion is to determine the application requirements. This includes the torque and speed requirements, the operating temperature range, the environment in which it will be used, and any other relevant specifications. 
2. **Calculate the loads:** Once the application requirements are known, the loads on the pinion can be calculated. This includes the tangential force, radial force, and axial force. 
3. **Choose a suitable material:** The material used for the pinion should be able to withstand the loads it will be subjected to. Common materials used for pinions include steel, cast iron, and brass. 
4. **Select the manufacturing process:** The manufacturing process used will depend on the material chosen and the complexity of the design. Common manufacturing processes for pinions include forging, casting, and machining. 
5. **Determine the tooth geometry:** The tooth geometry of the pinion is critical to its performance. The tooth profile, pressure angle, and number of teeth will all affect the load capacity and efficiency of the pinion. 
6. **Perform stress analysis:** Once the tooth geometry is determined, a stress analysis can be performed to ensure that the pinion will not fail under the loads it will be subjected to. 
7. **Finalize the design:** After all the above steps have been completed, the final design can be created, including any necessary tolerances and surface finish requirements. 
8. **Prototype and test:** Once the design is finalized, a prototype can be created and tested to ensure that it meets the application requirements and can withstand the loads it will be subjected to.

##### Comparative Size of Gear-Teeth

Using ISO (International Organization for Standardization) guidelines, Module Size is designated as the unit representing gear tooth-sizes.

{: .important}
p = Pi x Module = πm<br>
m = 1 (p = 3.1416)  
m = 2 (p = 6.2832)  
m = 4 (p = 12.566)

![Tooth Profile of Reference taken from KHKgears.net](https://khkgears.net/new/images/basic_gear_terminology_and_calculation/Fig.2.2-Normalized-Tooth-Profile-of-Reference.jpg)

Module (m) , Pressure Angle (α) , and the Number of Teeth, introduced here, are the three basic elements in the composition of a gear. Dimensions of gears are calculated based on these elements.

##### Tooth Depth and Thickness

Tooth depth is determined from the size of the module (m). Tooth depth (h) is the distance between tooth tip and the tooth root.

![Tooth Depth and Thickness taken from KHKgears.net](https://khkgears.net/new/images/basic_gear_terminology_and_calculation/Fig.-2.4-Tooth-Depth-and-Thickness.jpg)

{: .important}
**Addendum (ha)** is the distance between the reference line and the tooth tip <br>
ha = 1.00 m <br>
**Dedendum (hf)** is the distance between the reference line and the tooth root. <br>
hf = 1.25 m <br>
**Tooth thickness (s)** is basically half the value of pitch (p). * Pitch (p) = πm <br>
s = πm / 2 

##### Diameter of Gears (Size)

z represents the number of teeth.

{: .important}
**Reference diameter (d)** <br>
d = zm <br>
**Tip Diameter (d<sub>a</sub>)** <br>
d<sub>a</sub> = d + 2m <br>
**Root Diameter (d<sub>f</sub>)**<br>
d<sub>f</sub> = d - 2.5m

![Diameter of Gears by KHKgears.net](https://khkgears.net/new/images/basic_gear_terminology_and_calculation/Fig.2.5%20Diameter%20of%20Gears.jpg)



## Important Definitions

| Tangential Force | Force needed to deliver the linear movement profile | N |
| Torque | This is what the pinion sees and is simply tangential force * arm (radius pinion) | Nm |
| Safety Factor | Recommended at least 2 for horizontal and 3 for vertical drives |
| Friction Coefficient | How heavy or light does the system run? Widely used value is 0.1 or 0.15 |
| External Forces | if the system is used to push the products then this force is added to the tangential force |

## Points of Attention for the selection of Rack and Pinion

Keep the following in mind
- A pinion of about 20 or 23 teeth is mathematically optimum in terms of tangential force and system backlash. But there's no hard and fast rule that you need to consider 20 or 23 teeth always, it entirely depends with respect to your application.
> A smaller pinion can transmit lower torques and has a higher wear.

With the table below you can perform the calculations

| Application | Unit | 
| :---: | :---: |
| Total Weight load | m |
| Speed | v |
| Time Acceleration | ta |
| Gravity | g |
| Friction Coefficient | μ |
| Pitch Circle Pinion | d |
| Other Forces | F |
| Safety Factor | S<sub>B</sub> |

### Important Formulas

| Tangential Force | F<sub>N</sub> | F<sub>N</sub> = M * g * μ + M * a + F | N |
| Torque | T<sub>N</sub> | T<sub>N</sub> = (F<sub>N</sub> * d)/2000 | Nm |
| Design Torque | T<sub>NV</sub> | T<sub>NV</sub> = T<sub>N</sub> * S<sub>B</sub> | Nm |
| Max Speed Pinion | N<sub>V</sub> | N<sub>V</sub> = (v * 19100)/ d | rpm |

> Rack and pinion is often trial and error

For rack and pinion the minimum number of teeth is given by

$$t_{min} \ge \frac{2}{sin^2 \phi}$$
where $$\phi = {Pressure\ Angle}$$

{: .note}
Generally 20<sup>o</sup> is often taken as the pressure angle for involute gears.

### Significance of Pressure Angle

1. Increasing the pressure angle 
	1. improves tooth strength
	2. Results in a smaller base circle so more portion of tooth becomes involute thus can eliminate interference
	3. Will improve power transmission but at the same time will increase gear wear and meshing noise
2. Decreasing the Pressure Angle
	1. Will require more teeth on the pinion to avoid undercutting
	2. Will decrease power transmission capacity but will improve gear meshing properties like reduced noise
	

## References

- [Sciencing - Rack and Pinion: Gear Ratio](https://sciencing.com/rackandpinion-gear-ratio-7308536.html)
- [Apex Dynamics - Calculating rack and pinion, how do you do that?](https://www.apexdyna.nl/en/calculate-rack-and-pinion#:~:text=Points%20of%20attention%20for%20the%20selection%20of%20rack%20and%20pinion&text=A%20pinion%20of%20about%2020,and%20has%20a%20higher%20wear.)
- [Linear Motion Tips - How to size a rack and pinion drive](https://www.linearmotiontips.com/how-to-size-a-rack-and-pinion-drive/) 
- [Testbook.com - Min number of teeth](https://testbook.com/question-answer/for-standard-addendum-the-minimum-number-of-teeth--605622da6dd2357bf9dddbc0)
- [Testbook.com - Value of Pressure Angle generally used](https://testbook.com/question-answer/what-is-the-value-of-pressure-angle-generally-used--60995233bd8529fb8a15492b#:~:text=Generally%2C%2020%C2%B0%20of%20pressure%20angle%20is%20used%20for%20involute%20gears.&text=As%20the%20pressure%20angle%20increases,and%20increases%20load%2Dcarrying%20capacity.)
- [KHK Gear - Basic Gear Terminology and Calculation](https://khkgears.net/new/gear_knowledge/abcs_of_gears-b/basic_gear_terminology_calculation.html)