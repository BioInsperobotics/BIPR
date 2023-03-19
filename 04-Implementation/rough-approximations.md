---
layout: default
title: 00-Rough Approximations
nav_order: 0
parent: Implementation
last_modified_date: 2023-03-14 19:50 IST 
---

# Rough Approximations Made "As of Now"

---

`tbf` = to be found<br>
`at-im` = attach image

| Feature | Approximated to | Comments |
| --- | --- | --- |
| Individual weight of the tire with Kapton and Paper | `tbf` | 2*`tbf` |
| Weight of the tire system as whole | 20 gm | Includes the shaft of the wheel for actuation + wheel hub + mounts + etc |
| Expanded Origami fold or Compressed shaft | Diameter: $$90 mm \pm 10 mm$$ <br> Distance b/w ends: $$40 mm \pm 10 mm$$ | ![Imgur](https://i.imgur.com/i0BIKtY.jpg) |
| Compressed Origami fold or Expanded shaft | Diameter: $$55 mm \pm 5 mm$$ <br> Distance b/w ends: $$70 mm \pm 10 mm$$ | ![Imgur](https://i.imgur.com/Wh93SG1.jpg) |
| Expected Pitch Circle Diameter (PCD) | 32 mm |  |

## Calculations

### Pitch Circle Diameter


The circumference of the gear should be equal to length of the rack since we aim to cover the whole rack in one complete revolution.

$$2*\pi*R_G = 90 mm + 10 mm = 100mm$$

$$R_G = \frac{100}{2*\pi} $$

$$R_G = \frac{50}{\pi}$$

$$Radius\ of\ Gear: R_G = 15.9154 $$

so PCD of gear turns out to be $$31.830$$

