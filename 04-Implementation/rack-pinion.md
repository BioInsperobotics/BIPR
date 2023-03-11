---
layout: default
title: 01-Rack and Pinion
nav_order: 1
parent: Implementation
last_modified_date: 2023-03-08 19:37 IST 
---

# Everything About Rack and Pinion
{: .no_toc}

### Assumption

- Load or weight of the origami inspired Wheel 
	- Weight = 10gm
	- Origami Pattern = Magic Air Ball pattern

---

## Rack and Pinion

- Rack and pinion gear system consists of a round gear known as the pinion and a flat, toothed component known as the rack. The principle is the same, but rather than number of rotations, the ratio determines the linear distance traveled by the rack with each rotation of the pinion.
- An important principle is that you realize that the calculation and selection (rack, pinion, gearbox and motor) is done by trial-and-error: you have a good chance that you have to do the calculations agian with other parameters.

## Important Definitions

| Tangential Force | Force needed to deliver the linear movement profile | N |
| Torque | This is what the pinion sees and is simply tangential force * arm (radius pinion) | Nm |
| Safety Factor | Recommended at least 2 for horizontal and 3 for vertical drives |
| Friction Coefficient | How heavy or light does the system run? Widely used value is 0.1 or 0.15 |
| External Forces | if the system is used to push the products then this force is added to the tangential force |

## Points of Attention for the selection of Rack and Pinion

Keep the following in mind
- A pinion of about 20 teeth is mathematically optimum in terms of tangential force and system backlash. 
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
- 