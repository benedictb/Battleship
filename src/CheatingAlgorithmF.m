function [board,pickboard,count,shipchoice,shipnum,pick] = CheatingAlgorithmF(board,pickboard,count,shipchoice,shipnum,pick,endpoints)

if count < 5 % randomly miss for the first 5 turns
    pick = [randi(10),randi(10)];
    while board(pick(1),pick(2)) ~= 0
        pick = [randi(10),randi(10)];
    end
    count = count + 1;
    pickboard(pick(1),pick(2)) = 1;

    
elseif count == 5 % once the 5th turn occurs, guess the first coordinate of the next ship
    switch shipchoice
        case 1
            pick = [endpoints(1,1),endpoints(1,2)];
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
            pickboard(pick(1),pick(2)) = 2;
            shipnum = 1;
            shipchoice = shipchoice + 1;
        case 2
            pick = [endpoints(2,1),endpoints(2,2)];
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
            pickboard(pick(1),pick(2)) = 2;
            shipnum = 2;
            shipchoice = shipchoice + 1;
        case 3
            pick = [endpoints(3,1),endpoints(3,2)];
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
            pickboard(pick(1),pick(2)) = 2;
            shipnum = 3;
            shipchoice = shipchoice + 1;
        case 4
            pick = [endpoints(4,1),endpoints(4,2)];
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
            pickboard(pick(1),pick(2)) = 2;
            shipnum = 4;
            shipchoice = shipchoice + 1;
        case 5
            pick = [endpoints(5,1),endpoints(5,2)];
            board(pick(1),pick(2)) = board(pick(1),pick(2)) + 10;
            pickboard(pick(1),pick(2)) = 2;
            shipnum = 5;
            shipchoice = 1;
    end
    count = count + 1;
    
    
elseif count > 5
    switch shipnum
        case 1
            if endpoints(1,5) == 1 % vertical
                pick = [pick(1)-1,pick(2)];
                if pick(1) <= 0
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            elseif endpoints (1,5) == 2 % horizontal
                pick = [pick(1),pick(2)+1];
                if pick(2) >= 11
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            end
        case 2
            if endpoints(2,5) == 1 % vertical 
                pick = [pick(1)-1,pick(2)];
                if pick(1) <= 0
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            elseif endpoints (2,5) == 2 % horizontal
                pick = [pick(1),pick(2)+1];
                if pick(2) >= 11
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                 elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            end
        case 3
            if endpoints(3,5) == 1 % vertical
                pick = [pick(1)-1,pick(2)];
                if pick(1) <= 0
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            elseif endpoints (3,5) == 2 % horizontal
                pick = [pick(1),pick(2)+1];
                if pick(2) >= 11
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            end
        case 4
            if endpoints(4,5) == 1 % vertical
                pick = [pick(1)-1,pick(2)];
                if pick(1) <= 0
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            elseif endpoints (4,5) == 2 % horizontal
                pick = [pick(1),pick(2)+1];
                if pick(2) >= 11
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = shipnum + 1;
                end
            end
        case 5
            if endpoints(5,5) == 1 % vertical
                pick = [pick(1)-1,pick(2)];
                if pick(1) <= 0
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = 1;
                end
            elseif endpoints (5,5) == 2 % horizontal
                pick = [pick(1),pick(2)+1];
                if pick(2) >= 11
                    pick = [randi(10),randi(10)];
                    while board(pick(1),pick(2)) ~= 0 || pickboard(pick(1),pick(2)) ~= 0
                        pick = [randi(10),randi(10)];
                    end
                    count = 0;
                elseif board(pick(1),pick(2)) ~= 0
                    board(pick(1),pick(2)) = board(pick(1),pick(2))+10;
                    pickboard(pick(1),pick(2)) = 2;
                elseif board(pick(1),pick(2)) == 0
                    pickboard(pick(1),pick(2)) = 1;
                    count = 0;
                    shipnum = 1;
                end
            end
    end
    
end