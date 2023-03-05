---
layout: default
title: Localisation Strategies | Review 
nav_order: 6
parent: Research and Notes
last_modified_date: 2023-01-7 09:32 IST 
---



# Localization strategies for autonomous mobile robots: A review
{: .no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Metadata

- **Title:** Localization strategies for autonomous mobile robots: A review
- **URL:** [https://www.sciencedirect.com/science/article/pii/S1319157821000550](https://www.sciencedirect.com/science/article/pii/S1319157821000550)
- Prabin Kumar Panigrahi and Sukant Kishoro Bisoy | Department of Computer Science and Engineering, C. V. Raman Global University | 

## Highlights & Notes

### Abstract

-	Localization: The location of a robot with respect to its environment.
-	Localization problem categories
    -	Initial position of the robot
    -	Position update principles
    -	Key techniques to localize the mobile robot 
        -	Probabilistic approach  
            -	Markov localization
            -	Kalman Filter
        -	Autonomous map building
            -	Simultaneous Localization and Mapping (SLAM)
        -	Radio Frequency Identification (RFID)

---

### Introduction

-	**Performing successful navigation**
    -	Perception phase: extracting meaningful data by interpreting its sensors
    -	Localization phase: robot estimates its current location in employed environment using information from external sensors.
    -	Cognition phase: robot plans the necessary steps to reach the target.
    -	Motion Control: lets the robot achieve it’s desired trajectory by modifying it’s motor outputs

- **Localization problem**
    -	Position Tracking
        -	Robot’s initial position is known and the objective is to track the robot at each instance of time during its navigation in the environment
        -	Localization algo utilizes the robot’s previous position to update its current location
        -	Utilizes the odometry and sensor data
        -	Position uncertainty of the robot is required to be small
    -	Global position or localization
        -	Robot does not have any knowledge about its initial position.
        -	Robot is able to locate itself globally within the environment
    -	Kidnapped Robot
        -	Robot is abducted to an unidentified place
        -	Robot knows it is being kidnapped
        -	Kidnap recovery is necessary for any autonomous robots
        -	Best match between known data and sensor data solve the issue of relocation.
        -	It should be able to handle pose monitoring and relocation simultaneously
    -	Static environment: Localisation is simple since robot is the only moving object
    -	Dynamic environment: Localisation is significantly more difficult, because the robot gets confused about its location due to presence of other moving objects.
    -	SLAM: In unfamiliar zones, the robot learns the environment’s map during navigation. Simultaneous Localization and mapping.

---

### Localization Principle

-	A mobile robot keeps track of its motion using odometry
-	Odometry: estimating data from motion sensors to keep track of position over time
-	The external sensors along with robot’s odometry can be combined to localize the robot.
-	SBest – Robot’s belief
-	Robot’s position update has two steps
    -	Prediction/action update
        -	Here robot utilizes its proprioceptive sensors(e.g. Wheel/motor sensor, acceleration sensor) to estimate its position
        -	Due to odometry error, the uncertainty increases and gets accumulated over time
    -	Perception/measurement/correction update
        -	Robot corrects the estimated position(outcome of prediction phase) using its onboard exteroceptive sensors
-	Initial position x0 is known, and hence the PDF is Dirac delta function.
-	Robot uses rangefinder to calculate its present distance d from the right wall and computes the position x’2
-	The position conflicts with the present position x2 estimated in the prediction phase.
-	Measurement update corrects the new location to x’’2
-	Consequently the uncertainty shrinks.
-	Updated position = Initial position + robot’s path in the last sampling interval

### Localization Approaches

-	Probabilistic Approach
    -	Identifies the probabilities of robot being in specific positions
    -	Measurement errors affect the sensor data
    -	Probability of a robot in a specific configuration can only be computed using
        -	Markov Localization
        -	Kalman Filter Localization
    
#### MARKOV Localization
-	Robot can locate itself starting from an unknown position
-	Multiple possible positions can be tracked by the robot
-	Can recover from ambiguous situations
-	State space needs to be represented in a discrete way(topological graph or geometric grid) for updating the probability of possible positions.
-	Memory requirement for map size is limited
-	Prediction update phase
    -	Robot’s current location is estimated depending on the available info on previous locations and odometry input
    
#### KALMAN FILTER based localization
-	Solves the position tracking problem in efficient and precise manner
-	Optimal sensor fusion approach which tracks the robot from an initially known location
-	Special case of markov localization
-	Perception update phase
    -	Step 1: Observation Step: robot extracts different features such as specific sensor value, doors, lines etc.
    -	Step 2: Measurement/ Perception Prediction: consists of features that it expects to observe from its assumed positions that is from the outcomes of the prediction step.
    -	Step 3: Matching: robot computes the best match between features extracted from observation and features selected during the measurement prediction.
    -	Step 4: Estimation: updating the robot belief state

![Schematic Diagram of Kalman Filter](https://i.imgur.com/Bcb0947.png)

-	The robot initial position should be known with a certain approximation
-	If the robot gets lost, it can’t recover its position
-	It does not solve the global localization and the kidnapped robot problem.
-	Many robotic systems require the system to be nonlinear. This gives rise to another localisation approach commonly known as extended Kalman Filter (EKF), extension of Kalman filter to non linear systems
    -	Here the system is linearised and then kalman filter is applied
    -	Represents a Gaussian probability distribution
-	Simulated analysis show that, in comparison to KF, EKF performs better in mobile robot position estimation.

#### MCL: Monte Carlo Localisation
-	Uses a subset of the whole set of possible positions to construct the approximate belief state of the robot
-	Results in tracking and updating a small number of possible locations instead of all possible locations which reduces complexity
-	Object positioning system methods implemented by different authors
    -	**Vision based tracking system**: Utilizes color stereo cameras
    -	**Active Badge System**: Beacon based and RF schemes in office environment. Badge worn by every individual which emits a distinctive code in every 15s duration. Signal is received by a network sensor placed in a centralized location. Tag is responsible to determine the position of a person’s location.
    -	**Sound based localization**: locating objects through sound
    -	Complimentary filtering technique
        -	Fusing data gathered from GPS, digital compass and IMU
        -	Results in low implementation cost and high quality result for robot navigation in outdoor environment
    -	**TCP/IP Based client server system in intelligent space** 
        -	Localizes and control s different types of robots including robot wheel chairs
        -	System comprises of 11 cameras for synchronous image capturing
        -	Server makes connection with each of these cameras and robot
        -	Server collects various sensors data, processes them and sends the outcome to the client.
        -	For localization
            -	Calibration technique utilizes multi-camera network
            -	First, robot passes a model of calibration throughout the camera field of perspective
            -	Uses the robot odometry and captured images
    -	**Self localization approach Using image processing**
        -	Localising soccer humanoid robots
        -	It converts the obtained image into an image takes from the top view by an inverse perspective map
        -	Utilizes PSO to define the robot’s location relative to origin
        -	Recognizes position based on captured images
        -	Robot could do self localisation in 94% success and 6% failure
        -	In this state, more than 300mm distance errors and 15 deg angle are considered for inability in self localization.
        -	Achieves high accuracy as it utilizes ground line points for self localization.

---

### Autonomous Map Building

-   Localisation strategies discussed earlier require environment map
    -	Map is usually hand made
    -	For Self localization, robot utilizes different landmarks such as beacons, walls etc.. Environment maps contain these landmarks
-	Strategy for autonomous map building
    -	Robot starts navigating from a random initial point
    -	Explores the environment autonomously through its sensors
    -	Gain environment knowledge, builds a map through interpreting the scene
    -	Helps the robot to localize relative to the map
-	Computer vision has helped a lot but creating and modifying the environment is still a major concern usually termed as SLAM problem.
-	Mapping creates the environment’s map from the information on robot’s accurate path.
-	SLAM utilizes the data collected from the robot’s proprioceptive and exteroceptive sensors to recover both the environment map and robot path
-	Collected data are based on the displacement of robot estimated from the odometry and features such as lines, corners and planes. Theses features are extracted from ultrasonic sensor, laser sensor and camera images.
-	SLAM is formulated in a probabilistic way, where the present position and robot map is estimated as a probability distribution. 
-	The objective is to estimate the robot’s location and environment map from a given series of controls and sensor observation over distinct time steps.
-	Full SLAM: entire robot path is updated
-	Online SLAM: updates the robot’s current location only

#### EKF-SLAM based approach
-	Uses an extended state vector containing the robot pose and the position of all features in the map
-	Omnidirectional vision system
    -	Vision system to produce environment information around the mobile robot. Info is used to extract the environment features.
    -	Landmark is located and the EKF approach is used to synchronously update the attitude and location of the robot as well as map library. 
-	**SLAM based brain controlled robot localisation**	
    -	Human EEG signal is recorded by 40 channels based digital EEG recording system (NuAmps-NeuroScan)
    -	The motor imagery analyses this signal through the common spatial patter based support vector machine classification technique
    -	The motor imagery (MI) analyzes this signal through the common spatial pattern (CSP)-based support vector machine (SVM) classification technique. The proposed SLAM scheme focuses on improved RGB-D SLAM which combines feature tracking (based on optical flow) and deep learning techniques. The proposed methods get speedup by optical flow strategy and object identification based on deep learning provides higher accuracy, stronger robustness, and additional environmental information Simultaneously. Human operator manipulates the robot through the BRI based on MI combined with SVM classification based on CSP. The suggested methodology locates the robot more correctly by removing the error of pose calculated from ordinary matching of features.
-	**Control strategy with brain teleoperation**
    -	Technique adopts deep learning methods to navigate and control the mobile robot
    -	Well suited in unknown environments
    -	Robot is controlled by a steady state visually evoked potentials (SSVEP) based BCI system and deep learning.
    -	Human intentions are recorded as EEG signals by NuAmps device
    -	The online SVM classifered analyses EEG signals and decodes them to generate movement intentions which results in providing motion commands to control the robot.

---

### Radio Frequency Identification Device (RFID)

-	Broadly classified into two categories
    -	Active
    -	Passive
-	Non battery requirement to maintain the wake and query cycle, the passive tags have lifetime limit
-	Active tags use battery 
-	To localize a robot, set of tags are arranged in a grid pattern
-	Robot consists of RFID reader and an antenna(transponder)
-	Normally, RFID tags contains the location information. When the robot passes over a tag, the RFID reader attached to the robot detects the tag and extracts the position information
-	Hahnel Approach
    -	Proposed a probabilistic measurement model for RFID readers that make it possible to locate RFID tags
    -	System uses a laser range sensor to learn the environment’s geometric structure using FastSLAM algo
    -	Position of the tags is estimated based on robot’s path
    -	Here the authors applied MCL to determine the robot’s location globally
    -	Localisation errow with and without odometry during global localisation with RFID tags is analysed.
    -	Further laser based global localization error with and without RFID data is compared.
-	Analysis on Position and Orientation error
    -	Position error is the difference between the robot’s real position and its calculated position
    -	Orientation error is calculated as the modulus of the difference between actual and computed orientation.

---

### Conclusions and future direction

-	Combining probabilistic localisation approach such as EKF and SLAM increases localisation and orientation accuracy, which in turn reduces the positioning error. 
-	Further in low noise environment, EKF method is well suited to provide precise solution with higher convergence rate
-	In limited environment space such as indoor environments, the RFID scheme is proved to be very efficient in tracking robots
-	Apart from SLAM efficient continuous localisation and component mapping schemes like ARIEL and feature based extraction may also be combined with mobile robot localisation techniques.
