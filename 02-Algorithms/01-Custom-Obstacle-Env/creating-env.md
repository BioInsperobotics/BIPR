---
layout: default
title: Creating Env
nav_order: 1
parent: Custom_Obstacle_Env
grand_parent: Algorithms 
permalink: /01-Custom-Obstacle-Env
---

# Creating Obstacle Environment using 1's and 0's

```matlab

% The aim is to build an obstacle environment for the mobile robot to
% traverse and plan its motion

clc; clear;
y = 12;
x = 12;
% creating an empty world of one's
emptyWorld = zeros(int32(180/y), int32(180/y));
size(emptyWorld) % rows=21 col=21
emptyWorld;

% 1 - Obstacle center
emptyWorld(8,8) = 1;

% -------------------------------------
% 2 - Obstacle end-points
% -------------------------------------

for i=1:7:15
    for j=15:-7:1
        emptyWorld(i,j) = 1;
    end
end

% -------------------------------------
% 3 - Obstacle "V"
% -------------------------------------

v1 = {3,4,5};
v2 = {3,5};
for i=1:numel(v1)
    for j=1:numel(v2)
        emptyWorld(v1{i},v2{j})=1;
    end
end
emptyWorld(6,4) = 1;

% -------------------------------------
% 4 - Obstacle "E"
% -------------------------------------

e1 = {10,11,12,13,14};
e2 = {4,5};
for i=1:numel(e1)
    emptyWorld(e1{i},3)=1;
        end
for i=1:2:numel(e1)
    for j=1:numel(e2)
        emptyWorld(e1{i},e2{j})=1;
    end
end

% -------------------------------------
% 5 - Obstacle "D"
% -------------------------------------

d1 = {3,4,5,6};
d2 = {11,12};
for i=1:numel(d1)
    emptyWorld(d1{i},10)=1;
end
for i=1:3:numel(d1)
    for j=1:numel(d2)
        emptyWorld(d1{i},d2{j})=1;
    end
end

for i=2:numel(d1)-1
    emptyWorld(d1{i},13)=1;
end

% -------------------------------------
% 6 - Obstacle "A"
% -------------------------------------

for i=1:numel(e1)
    emptyWorld(e1{i},10)=1;
    emptyWorld(e1{i},13)=1;
end

for i=1:2:numel(e1)-2
    for j=1:numel(d2)
        emptyWorld(e1{i},d2{j})=1;
    end
end

% -------------------------------------
% 7 - Final Obstacles
% -------------------------------------

f1 = {4,5,11,12};
for i=1:numel(f1)
    emptyWorld(f1{i},8)=1;
    emptyWorld(8,f1{i})=1;
end

save environment
imshow(emptyWorld)
axis on
grid on
grid minor
```