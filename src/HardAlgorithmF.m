function [board,pickboard,recenthit,pickcount,ocount,pick] = HardAlgorithmF(board,pickboard,recenthit,pickcount,ocount)
%% HardAlgorithmF.m
% This code corresponds to the "Hard" computer difficulty


%% Alternate (even,even) and (odd,odd) random picks

if recenthit(3) == 0 % triggers whether the function should make a random or educated guess
    picked = false;
    evenodd = randi(2);
    if evenodd == 1 % try (even,even)
        evenRow = [2,4,6,8,10];
        evenCol = [2,4,6,8,10];
        pickRow = evenRow(randi(5));
        pickCol = evenCol(randi(5));
        pick = [pickRow,pickCol];
        pickcount = pickcount + 1;
        while ~picked
            if pickboard(pick(1),pick(2)) == 0;
                picked = true;
            else
                pickRow = evenRow(randi(5));
                pickCol = evenCol(randi(5));
                pick = [pickRow,pickCol];
                pickcount = pickcount + 1;
                if pickcount > 100
                    evenodd = 3;
                    picked = true;
                end
            end
        end
        
        if board(pick(1),pick(2)) > 0
            pickboard(pick(1),pick(2)) = 2;
            recenthit(3) = true;
            recenthit(1) = pick(1);
            recenthit(2) = pick(2);
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
        else
            pickboard(pick(1),pick(2)) = 1;
        end
        
        
    elseif evenodd == 2
        oddRow = [1,3,5,7,9];
        oddCol = [1,3,5,7,9];
        pickRow = oddRow(randi(5));
        pickCol = oddCol(randi(5));
        pick = [pickRow,pickCol];
        pickcount = pickcount + 1;
        while ~picked
            if pickboard(pick(1),pick(2)) == 0;
                picked = true;
            else
                pickRow = oddRow(randi(5));
                pickCol = oddCol(randi(5));
                pick = [pickRow,pickCol];
                pickcount = pickcount + 1;
                if pickcount > 100
                    evenodd = 3;
                    picked = true;
                end
            end
        end
        
        if board(pick(1),pick(2)) > 0
            pickboard(pick(1),pick(2)) = 2;
            recenthit(3) = true;
            recenthit(1) = pick(1);
            recenthit(2) = pick(2);
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
        else
            pickboard(pick(1),pick(2)) = 1;
        end
    end
        
    if evenodd == 3
        pick = randi(10,[1,2]);
        while ~picked
            if pickboard(pick(1),pick(2)) == 0;
                picked = true;
            else
                pick = randi(10,[1,2]);
            end
        end
        if board(pick(1),pick(2)) > 0
            pickboard(pick(1),pick(2)) = 2;
            recenthit(3) = true;
            recenthit(1) = pick(1);
            recenthit(2) = pick(2);
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
        else
            pickboard(pick(1),pick(2)) = 1;
        end
        
    end
        
    
elseif recenthit(3) == 1 % when a hit is randomly obtained, cycle through this "educated" loop
    picked = false;
    orientation = randi([1,4]); %1 is north/2 is east/3 is south/4 is west
    %ocount = 0; % initializes orientation counter
    while ~picked
        ocount = ocount + 1;
        switch orientation % to randomly determine the direction of the next pick
            case 1 % north
                nextRow = recenthit(1)-1;
                nextCol = recenthit(2);
                pick = [nextRow,nextCol];
                if nextRow <= 0 || pickboard(pick(1),pick(2)) >0 % check to see if the next pick is off the board or has already been chosen
                    orientation = randi([1,4]); % if so, try different orientation
                else
                    picked = true;
                end
            case 2 % east
                nextRow = recenthit(1);
                nextCol = recenthit(2)+1;
                pick = [nextRow,nextCol];
                if nextCol >= 11 || pickboard(pick(1),pick(2)) > 0 % check to see if the next pick is off the board or has already been chosen
                    orientation = randi([1,4]); % if so, try different orientation
                else
                    picked = true;
                end
            case 3 % south
                nextRow = recenthit(1)+1;
                nextCol = recenthit(2);
                pick = [nextRow,nextCol];
                if nextRow >= 11 || pickboard(pick(1),pick(2)) > 0 % check to see if the next pick is off the board or has already been chosen
                    orientation = randi([1,4]); % if so, try different orientation
                else
                    picked = true;
                end
            case 4 % west
                nextRow = recenthit(1);
                nextCol = recenthit(2)-1;
                pick = [nextRow,nextCol];
                if nextCol <= 0 || pickboard(pick(1),pick(2)) > 0 % check to see if the next pick is off the board or has already been chosen
                    orientation = randi([1,4]); % if so, try different orientation
                else
                    picked = true;
                end
                
        end
        
        if ocount >= 4 % failsafe to make sure that the program doesn't get stuck
            pick = [randi(10),randi(10)]; % nextPick becomes a random guess
            while pickboard(pick(1),pick(2)) ~= 0
                pick = [randi(10),randi(10)];
            end
            picked = true;
            ocount = 0;
        end
    end
    
    
    
    
    if board(pick(1),pick(2)) > 0
        pickboard(pick(1),pick(2)) = 2;
        recenthit(3) = true;
        recenthit(1) = pick(1);
        recenthit(2) = pick(2);
        board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
    else
        pickboard(pick(1),pick(2)) = 1;
        recenthit(3) = false;
    end
    
    if ocount < 3
        recenthit(3) = true;
        ocount = 0;
    end
    
    
else disp ('fuck');
end
end

