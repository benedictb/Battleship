function [board,pickboard,recenthit,pick] = MediumAlgorithmF(board,pickboard,recenthit)
%% MediumAlgorithmF.m
% This code corresponds to the "medium" computer difficulty


%% First, Easy Algorithm (random)


if recenthit(3) == 0 % triggers whether the function should make a random or educated guess
    picked = false;
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
    
elseif recenthit(3) == 1 % when a hit is randomly obtained, cycle through this "educated" loop
    picked = false;
    orientation = randi([1,4]); %1 is north/2 is east/3 is south/4 is west
    ocount = 0; % initializes orientation counter
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
        
        if ocount == 4 % failsafe to make sure that the program doesn't get stuck
            pick = [randi(10),randi(10)]; % nextPick becomes a random guess
            while pickboard(pick(1),pick(2)) ~= 0
                pick = [randi(10),randi(10)];
            end
            picked = true;
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
    
    
else disp ('fuck');
end
end

