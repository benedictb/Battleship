function GameSimF(handles)
ngames = str2double(handles.ngamesEdit.String);
wongames = [0 0 0];
turnsarray = zeros([2,ngames]);
for irounds = 1:ngames
    
    game1end = false;
    game2end = false;
    turns1 = 0;
    turns2 = 0;
    [board1,endpoints1,pickboard1,recenthit1,pickcount1,ocount1] = ShipPlacerF;
    [board2,endpoints2,pickboard2,recenthit2,pickcount2,ocount2] = ShipPlacerF;
    
    while ~game1end
        switch handles.firstPop.Value
            case 1
                [board1,pickboard1,recenthit1,pick] = EasyAlgorithmF(board1,pickboard1,recenthit1);
            case 2
                [board1,pickboard1,recenthit1,pick] = MediumAlgorithmF(board1,pickboard1,recenthit1);
            case 3
                [board1,pickboard1,recenthit1,pickcount1,ocount1,pick] = HardAlgorithmF(board1,pickboard1,recenthit1,pickcount1,ocount1);
            case 4
                [board1,pickboard1,recenthit1,pickcount1,ocount1] = ExpertAlgorithmF(board1,pickboard1,recenthit1,pickcount1,ocount1);
        end
        game1end = true;
        for irow = 1:10
            for icolumn = 1:10
                if board1(irow,icolumn) > 0 && board1(irow,icolumn)< 11;
                    game1end  = false;
                end
            end
        end
        
        turns1 = turns1 + 1;
    end
    while ~game2end
        
        switch handles.secondPop.Value
            case 1
                [board2,pickboard2,recenthit2,pick] = EasyAlgorithmF(board2,pickboard2,recenthit2);
            case 2
                [board2,pickboard2,recenthit2,pick] = MediumAlgorithmF(board2,pickboard2,recenthit2);
            case 3
                [board2,pickboard2,recenthit2,pickcount2,ocount2,pick] = HardAlgorithmF(board2,pickboard2,recenthit2,pickcount2,ocount2);
            case 4
                [board1,pickboard1,recenthit1,pickcount1,ocount1] = ExpertAlgorithmF(board1,pickboard1,recenthit1,pickcount1,ocount1);
        end
        game2end = true;
        for irow = 1:10
            for icolumn = 1:10
                if board2(irow,icolumn) > 0 && board2(irow,icolumn)< 11;
                    game2end = false;
                end
            end
        end
        turns2 = turns2 + 1;
    end
    
    if turns1 < turns2
        wongames(1) = wongames(1) + 1;
    elseif turns2 < turns1
        wongames(2) = wongames(2) + 1;
    elseif turns1 == turns2
        wongames(3) = wongames(3) + 1;
    else disp('error');
    end
    
    turnsarray(1,irounds) = turns1;
    turnsarray(2,irounds) = turns2;
    
    
end

mean1 = mean(turnsarray(1));
mean2 = mean(turnsarray(2));
meanarray = [mean1 mean2];
bar(handles.plotAxes,wongames);
title(handles.plotAxes,'Number of games won')
bar(handles.turnAxes,meanarray);
title(handles.turnAxes,'Average number of turns');
