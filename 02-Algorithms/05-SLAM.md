---
layout: default
title: SLAM
nav_order: 5 
parent: Algorithms
last_modified_date: 2022-11-19 17:15 IST
---

# Simultaneous Localisation and Mapping

```matlab
clc; clear;
load("offlineSlamData.mat")

%% Run SLAM algo, Construct optimized map and plot trajectory of the robot

maxLidarRange = 5;
mapResolution = 50;
slamAlg = lidarSLAM(mapResolution, maxLidarRange);
slamAlg.LoopClosureThreshold = 210;
slamAlg.LoopClosureSearchRadius = 8;

%% Initialize video
myVideo = VideoWriter('SLAMalgo'); %open video file
myVideo.FrameRate = 10; %can adjust this, 5 - 10 works well for me
open(myVideo)

%% Observe the map building process with initial 10 scans
for i = 1:70
    [isScanAccepted, loopClosureInfo, optimizationInfo] = addScan(slamAlg, scans{i});
    show(slamAlg);
    if isScanAccepted
        fprintf('Added scan %d \n', i);
        drawnow
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        frame = getframe(gcf); %get frame
        writeVideo(myVideo, frame);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    end
end
% figure;
% show(slamAlg)
title({'Map of the environment','Pose graph for initial 70 scans'})
close(myVideo)
```

![SLAM animation gif](https://i.imgur.com/EWGQZGP.gifv)