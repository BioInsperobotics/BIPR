clc; clear;

x = 21; y = 21;

% Creating a maze of zero's
maze = zeros(int32(441/x),int32(441/y));    % rows=21 and col=21

%% Common list
x1={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21};
x2={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21};


%% Obstacle ROW 1
maze(1,12)=1;
maze(1,16)=1;

%% Obstacle ROW 2
for i=1:numel(x1)
    if i~=3 && i~=13 && i~=19
        maze(2,x1{i})=1;
    end
end

%% Obstacle ROW 3
maze(3,8)=1;
maze(3,12)=1;
maze(3,16)=1;
maze(3,18)=1;

%% Obstacle ROW 4
% path allow = 3 7 11 13 17 19

for i=1:numel(x1)
    if i==3 || i==7 || i==11 || i==13 || i==17 || i==19
        maze(4,x1{i})=0;
    else
        maze(4,x1{i})=1;
    end
end

%% Obstacle ROW 5
% 6 8 12 16
maze(5,6)=1;
maze(5,8)=1;
maze(5,12)=1;
maze(5,16)=1;

%% Obstacle ROW 6
% path allow = 3 9 15 19 21
for i=1:numel(x1)
    if i==3 || i==9 || i==15 || i==19 || i==21 
        maze(6,x1{i})=0;
    else
        maze(6,x1{i})=1;
    end
end

%% Obstacle ROW 7
% 4 8 12 18 20
maze(7,4)=1;
maze(7,8)=1;
maze(7,12)=1;
maze(7,18)=1;
maze(7,20)=1;

%% Obstacle ROW 8
% path allow = 3 7 11 15 21
for i=1:numel(x1)
    if i==3 || i==7 || i==11 || i==15 || i==21 
        maze(8,x1{i})=0;
    else
        maze(8,x1{i})=1;
    end
end

%% Obstacle ROW 9
% 4 12 14
maze(9,4)=1;
maze(9,12)=1;
maze(9,14)=1;

%% Obstacle ROW 10
% path allow = 1 7 9 11 13 15 17
for i=1:numel(x1)
    if i==1 || i==7 || i==9 || i==11 || i==13 || i==15 || i==17 
        maze(10,x1{i})=0;
    else
        maze(10,x1{i})=1;
    end
end

%% Obstacle ROW 11
% 8 10 16 18 
maze(11,8)=1;
maze(11,10)=1;
maze(11,16)=1;
maze(11,18)=1;

%% Obstacle ROW 12
% path allow = 1 5 17 21
for i=1:numel(x1)
    if i==1 || i==5 || i==17 || i==21 
        maze(12,x1{i})=0;
    else
        maze(12,x1{i})=1;
    end
end

%% Obstacle ROW 13
% 2 8 18 20
maze(13,2)=1;
maze(13,8)=1;
maze(13,18)=1;
maze(13,20)=1;

%% Obstacle ROW 14
% path allow = 5 15 19 21
for i=1:numel(x1)
    if i==5 || i==15 || i==19 || i==21 
        maze(14,x1{i})=0;
    else
        maze(14,x1{i})=1;
    end
end

%% Obstacle ROW 15
% 8 12 20
maze(15,8)=1;
maze(15,12)=1;
maze(15,20)=1;

%% Obstacle ROW 16
% path allow = 1 3 11 19 21
for i=1:numel(x1)
    if i==1 || i==3 || i==11 || i==19 || i==21 
        maze(16,x1{i})=0;
    else
        maze(16,x1{i})=1;
    end
end

%% Obstacle ROW 17
% 2 4 8 12 16  
maze(17,2)=1;
maze(17,4)=1;
maze(17,8)=1;
maze(17,12)=1;
maze(17,16)=1;

%% Obstacle ROW 18
% path allow = 5 11 14 17 19  
for i=1:numel(x1)
    if i==5 || i==11 || i==14 || i==17 || i==19 
        maze(18,x1{i})=0;
    else
        maze(18,x1{i})=1;
    end
end

%% Obstacle ROW 19
% 6 10 18
maze(19,6)=1;
maze(19,10)=1;
maze(19,18)=1;

%% Obstacle ROW 20
% path allow = 1 3 9 11 15 19
for i=1:numel(x1)
    if i==1 || i==3 || i==9 || i==11 || i==15 || i==19 
        maze(20,x1{i})=0;
    else
        maze(20,x1{i})=1;
    end
end

%% Obstacle ROW 21
% 2 12 18
maze(21,2)=1;
maze(21,12)=1;
maze(21,18)=1;

%% Display
maze
save custom_maze
imshow(maze)
axis on
grid on
grid minor

