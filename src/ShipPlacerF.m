function [board,endpoints,pickboard,recenthit,pickcount,ocount] = ShipPlacerF
%% ShipPlacerF.m
% This program randomly places the 5 computer ships of varying lengths upon
% the game board

% types of ships/ lengths
% aircraft=5;
% submarine=3;
% battleship=4;
% destroyer=3;
% patrol=2;


% SHIP NUMBERS 
% Aircraft=1 Battleship=2 Sub=3 Destroyer=4 Patrol=5

% generate game board of zeros
board = zeros(10);
pickboard = zeros(10);
recenthit = [0 0 0];

endpoints = zeros([5,5]);

%% Ship 1
% pick random coordinate
pickRow1 = randi(10);
pickCol1 = randi(10);
% pick random orientation
orientation = randi([1,2]); %1 is north/2 is east/3 is south/4 is west
switch orientation
    case 1 %north
        while pickRow1<5
            pickRow1 = randi(10);
        end
        start1 = [pickRow1,pickCol1];
        end1 = [pickRow1-4,pickCol1];
        
        board(pickRow1-4:pickRow1,pickCol1) = 1;
    case 2 %east
        while pickCol1>5
            pickCol1 = randi(10);
        end
        start1 = [pickRow1,pickCol1];
        end1 = [pickRow1,pickCol1+4];
        
        board(pickRow1,pickCol1:pickCol1+4) = 1;
end
endpoints(1,1:4) = [start1,end1];
endpoints(1,5) = orientation;
%% Ship 2
% pick random coordinate
pickRow2 = randi(10);
pickCol2 = randi(10);
% pick random orientation
orientation = randi([1,2]); %1 is north/2 is east/3 is south/4 is west

switch orientation
    case 1 %north
        overlap = false;
        while ~overlap
            while pickRow2<4
                pickRow2 = randi(10);
            end
            if board(pickRow2-3:pickRow2,pickCol2) == 0
                start2 = [pickRow2,pickCol2];
                end2 = [pickRow2-3,pickCol2];
                
                board(pickRow2-3:pickRow2,pickCol2) = 2;
                overlap = true;
            else
                pickRow2 = randi(10);
                pickCol2 = randi(10);
            end
        end
    case 2 %east
        overlap = false;
        while ~overlap
            while pickCol2>4
                pickCol2 = randi(10);
            end
            if board(pickRow2,pickCol2:pickCol2+3) == 0
                 start2 = [pickRow2,pickCol2];
                end2 = [pickRow2,pickCol2+3];
                
                board(pickRow2,pickCol2:pickCol2+3) = 2;
                overlap = true;
            else
                pickRow2 = randi(10);
                pickCol2 = randi(10);
               
            end
        end
end
endpoints(2,1:4) = [start2,end2];
endpoints(2,5) = orientation;
%% Ship 3
% pick random coordinate
pickRow3 = randi(10);
pickCol3 = randi(10);
% pick random orientation
orientation = randi([1,2]); %1 is north/2 is east/3 is south/4 is west

switch orientation
    case 1 %north
        overlap = false;
        while ~overlap
            while pickRow3<3
                pickRow3 = randi(10);
            end
            if board(pickRow3-2:pickRow3,pickCol3) == 0
                start3 = [pickRow3,pickCol3];
                end3 = [pickRow3-2,pickCol3];
                
                board(pickRow3-2:pickRow3,pickCol3) = 3;
                overlap = true;
            else
                pickRow3 = randi(10);
                pickCol3 = randi(10);
            end
        end
    case 2 %east
        overlap = false;
        while ~overlap
            while pickCol3>3
                pickCol3 = randi(10);
            end
            if board(pickRow3,pickCol3:pickCol3+2) == 0
                start3 = [pickRow3,pickCol3];
                end3 = [pickRow3,pickCol3+2];
               
                board(pickRow3,pickCol3:pickCol3+2) = 3;
                overlap = true;
            else
                pickRow3 = randi(10);
                pickCol3 = randi(10);
               
            end
        end
end

endpoints(3,1:4) = [start3,end3];
endpoints(3,5) = orientation;
%% Ship 4
% pick random coordinate
pickRow4 = randi(10);
pickCol4 = randi(10);
% pick random orientation
orientation = randi([1,2]); %1 is north/2 is east/3 is south/4 is west

switch orientation
    case 1 %north
        overlap = false;
        while ~overlap
            while pickRow4<3
                pickRow4 = randi(10);
            end
            if board(pickRow4-2:pickRow4,pickCol4) == 0
                start4 = [pickRow4,pickCol4];
                end4 = [pickRow4-2,pickCol4];
                
                board(pickRow4-2:pickRow4,pickCol4) = 4;
                overlap = true;
            else
                pickRow4 = randi(10);
                pickCol4 = randi(10);
            end
        end
    case 2 %east
        overlap = false;
        while ~overlap
            while pickCol4>3
                pickCol4 = randi(10);
            end
            if board(pickRow4,pickCol4:pickCol4+2) == 0
                start4 = [pickRow4,pickCol4];
                end4 = [pickRow4,pickCol4+2];
                
                board(pickRow4,pickCol4:pickCol4+2) = 4;
                overlap = true;
            else
                pickRow4 = randi(10);
                pickCol4 = randi(10);
               
            end
        end
end
endpoints(4,1:4) = [start4,end4];
endpoints(4,5) = orientation;
%% Ship 5
% pick random coordinate
pickRow5 = randi(10);
pickCol5 = randi(10);
% pick random orientation
orientation = randi([1,2]); %1 is north/2 is east/3 is south/4 is west

switch orientation
    case 1 %north
        overlap = false;
        while ~overlap
            while pickRow5<2
                pickRow5 = randi(10);
            end
            if board(pickRow5-1:pickRow5,pickCol5) == 0
                start5 = [pickRow5,pickCol5];
                end5 = [pickRow5-1,pickCol5];
                
                board(pickRow5-1:pickRow5,pickCol5) = 5;
                overlap = true;
            else
                pickRow5 = randi(10);
                pickCol5 = randi(10);
            end
        end
    case 2 %east
        overlap = false;
        while ~overlap
            while pickCol5>2
                pickCol5 = randi(10);
            end
            if board(pickRow5,pickCol5:pickCol5+1) == 0
                start5 = [pickRow5,pickCol5];
                end5 = [pickRow5,pickCol5+1];
                
                board(pickRow5,pickCol5:pickCol5+1) = 5;
                overlap = true;
            else
                pickRow5 = randi(10);
                pickCol5 = randi(10);
               
            end
        end
end
endpoints(5,1:4) = [start5,end5];
endpoints(5,5) = orientation;
pickcount = 0;
ocount = 0;