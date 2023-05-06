---
layout: default
title: 05-Control and Hardware
nav_order: 5
parent: Implementation
last_modified_date: 2023-05-06 10:59 IST 
---

# Control and Hardware Implementation
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Control Flowchart

<a href="https://imgur.com/igDuUow"><img align=right width=300px src="https://i.imgur.com/igDuUow.png" title="source: imgur.com" /></a>

The flowchart displays a general working of the control aspect of our project where Visual Feedback is ensured to turn the knob of the potentiometer resulting in the change in direction of the servo motor. 

Apart from this, handheld transformation also took place wherein we pulled the rack while driving on the pinion to provide sufficient torque for the transformation to take place and it was noted that the system would actually work when chosen with the right motor providing more than sufficient torque.

## Servo Motor Working

Servo motors are often used for positioning tasks. A servo motor comprises of a Sawtooth Shaft, Potentiometer, Gearbox, DC Motor and an IC chip.

<a href="https://imgur.com/pH1ZktY"><img src="https://i.imgur.com/pH1ZktY.png"/></a>

1. Connection of the Three wires 
	1. Brown: GND 
	2. Red: VCC – Requires voltage between 4.8V – 7.2V 
	3. Orange: PWM or Control Signal 
		1. Periodic time of 20ms aka 1/20 = 50Hz 
		2. Duty Cycle of 1-2ms
2. An ‘On’ time of 1ms represents -90<sup>o</sup> position. 
3. 1.5ms represents 0<sup>o</sup> position. Sawtooth shaft Gearbox Potentiometer DC Motor 
4. 2ms represents 90<sup>o</sup> position. 
5. Structure 
	1. 4 different size gears that decrease the original RPM usually from 3000RPM to 50-100 RPM, thereby increasing the torque. 
	2. A potentiometer is present inside the servo. 
		1. Potentiometer creates a voltage divider that outputs a variable voltage according to the position of the motor shaft and acts as feedback for the utilized control IC (KC5188) 
		2. The IC constantly compares the potentiometer voltage aka the current states to the intended position of the PWM signal aka the Target States and then activates an integrated H bridge which lets the motor drive in either direction to achieve a difference of 0 between the two signals.

<a href="https://imgur.com/uJR8WdC"><img src="https://i.imgur.com/uJR8WdC.png" /></a>

## Potentiometer Working

Potentiometer is often termed as Potmeter which is a three terminal analog device. 
1. A manually adjustable variable resistor by turning the top of the potmeter. 
2. 3 terminals 
	1. Two Fixed Terminal: connected to both ends of the resistive element for establishing an electrical resistance.
	2. Variable Terminal: connected to the sliding contact or wiper, attached to a rotary knob 
		1. The wiper will run across the resistive element resulting in making good electrical contact. 
	3. Working Principle 
		1. If we connect the 2 fixed terminal ends of the potentiometer to a multimeter, it displays the maximum resistance of the potentiometer 
	4. Potentiometer acting as Voltage Divider 
		1. DC Motor – Potentiometer – Power Supply 
		2. Here we use potentiometer for motor speed control 
		3. Higher Resistance config, more voltage will pass thus increasing the speed of the DC motor and vice versa

## Connections

<a href="https://imgur.com/kSSZrj1"><img src="https://i.imgur.com/kSSZrj1.png" title="source: imgur.com" /></a>

**Code:**

```c
#include Servo myservo; // create servo object to control a servo 
int potpin = A5; // analog pin used to connect the potentiometer 
int val; // variable to read the value from the analog pin 
void setup() { 
	Serial.begin(9600); // setup serial 
	myservo.attach(6); // attaches the servo on pin 9 to the servo object 
} 
void loop() { // Servo knob demo 
	val = analogRead(potpin); // reads the value of the potentiometer (value between 0 and 1023) 
	Serial.print(val); Serial.print(" "); 
	val = map(val, 0, 1023, 0, 180); // scale it to use it with the servo (value between 0 and 180) 
	myservo.write(val); // sets the servo position according to the scaled value 
	Serial.print(val); Serial.println(); 
	delay(10);
}
```