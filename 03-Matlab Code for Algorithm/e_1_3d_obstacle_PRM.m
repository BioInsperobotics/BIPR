clc; clear;

scenario = robotScenario(UpdateRate=5);

% Defined a plane mesh of size 21*21 having color yellow
floorColor = [1 1 0];
addMesh(scenario, "Plane", Position=[1 0 0], Size=[21 21], Color=floorColor);

%% Creating the walls acting as obstacles

% Common dimensions
wallHeight = 1;
wallWidth = 1;
wallLength = 1;
wallColor = [1 0 0];
def_xyz = [10 -10];
% Adding the outer walls

%% Common list
x1={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21};
x2={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21};

% Row 1
%                                                                      [    x   y   z ]
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1) 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+16 def_xyz(1) 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 2
for i=1:numel(x1)
    if i~=3 && i~=13 && i~=19
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-1 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 3
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+8 def_xyz(1)-2 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1)-2 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+16 def_xyz(1)-2 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+18 def_xyz(1)-2 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 4
for i=1:numel(x1)
    if i==3 || i==7 || i==11 || i==13 || i==17 || i==19
%         addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=false, Position=[def_xyz(2)+i def_xyz(1)-3 0.5], Size=[wallHeight wallWidth wallLength]);
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-3 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 5
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+6 def_xyz(1)-4 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+8 def_xyz(1)-4 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1)-4 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+16 def_xyz(1)-4 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 6
for i=1:numel(x1)
    if i==3 || i==9 || i==15 || i==19 || i==21 
%         addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+6 def_xyz(1)-4 0.5], Size=[wallHeight wallWidth wallLength]);
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-5 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 7
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+4 def_xyz(1)-6 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+8 def_xyz(1)-6 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1)-6 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+18 def_xyz(1)-6 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+20 def_xyz(1)-6 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 8
for i=1:numel(x1)
    if i==3 || i==7 || i==11 || i==15 || i==21 
%         addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-7 0.5], Size=[wallHeight wallWidth wallLength]);
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-7 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 9
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+4 def_xyz(1)-8 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1)-8 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+14 def_xyz(1)-8 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 10
for i=1:numel(x1)
    if i==1 || i==7 || i==9 || i==11 || i==13 || i==15 || i==17 
%         addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+4 def_xyz(1)-8 0.5], Size=[wallHeight wallWidth wallLength]);
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-9 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 11
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+8 def_xyz(1)-10 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+10 def_xyz(1)-10 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+16 def_xyz(1)-10 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+18 def_xyz(1)-10 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 12
for i=1:numel(x1)
    if i==1 || i==5 || i==17 || i==21 
%         maze(12,x1{i})=0;
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-11 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 13
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+2 def_xyz(1)-12 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+8 def_xyz(1)-12 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+18 def_xyz(1)-12 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+20 def_xyz(1)-12 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 14
for i=1:numel(x1)
    if i==5 || i==15 || i==19 || i==21 
%         maze(14,x1{i})=0;
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-13 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 15
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+8 def_xyz(1)-14 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1)-14 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+20 def_xyz(1)-14 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 16
for i=1:numel(x1)
    if i==1 || i==3 || i==11 || i==19 || i==21 
%         maze(16,x1{i})=0;
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-15 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 17
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+2 def_xyz(1)-16 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+4 def_xyz(1)-16 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+8 def_xyz(1)-16 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1)-16 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+16 def_xyz(1)-16 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 18
for i=1:numel(x1)
    if i==5 || i==11 || i==14 || i==17 || i==19 
%         maze(18,x1{i})=0;
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-17 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 19
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+6 def_xyz(1)-18 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+10 def_xyz(1)-18 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+18 def_xyz(1)-18 0.5], Size=[wallHeight wallWidth wallLength]);

% Row 20
for i=1:numel(x1)
    if i==1 || i==3 || i==9 || i==11 || i==15 || i==19 
%         maze(20,x1{i})=0;
    else
        addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+i def_xyz(1)-19 0.5], Size=[wallHeight wallWidth wallLength]);
    end
end

% Row 21
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+2 def_xyz(1)-20 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+12 def_xyz(1)-20 0.5], Size=[wallHeight wallWidth wallLength]);
addMesh(scenario,"Box",Color=wallColor,IsBinaryOccupied=true, Position=[def_xyz(2)+18 def_xyz(1)-20 0.5], Size=[wallHeight wallWidth wallLength]);

show3D(scenario)
lightangle(-45,30);
view(60,50);

%% Obtaining the binary occupancy map
map = binaryOccupancyMap(scenario, GridOriginInLocal=[-9.5 -10.5], MapSize=[21 21],MapHeightLimits=[0 3]);
inflate(map, 0.1);

show(map)

%% Path Planning
start = [-8.5 10]; 
goal = [10 -10];

hold on;
plot(start(1),start(2),'mo');
plot(goal(1),goal(2),'go');

ss = stateSpaceSE2;
ss.StateBounds = [map.XWorldLimits; map.YWorldLimits; [-pi,pi]];

sv = validatorOccupancyMap(ss);
sv.Map = map;
sv.ValidationDistance = 0.01;
