function [myboard,mypickboard,board,pickboard,pickcount,ocount,recenthit,eventHistory] = boardupdateF( handles,myboard,mypickboard,board,pickboard,pickcount,ocount,recenthit,eventHistory)

%Updates the board, yo. you know what it is.

miss = imread('userMiss2.png');
hit = imread('userHit.png');
comphit = imread('userDamaged.png');

%% This part updates the computer's board with the player's pick
mypick = [handles.rowPopup.Value, handles.columnPopup.Value];
if mypickboard(mypick(1),mypick(2)) > 0
    h = errordlg('Bullship! You''ve already picked here!');
else
    
    
    if board(mypick(1),mypick(2)) > 0
        hax = handles.(['Caxes',num2str(mypick(1)),num2str(mypick(2))]);
        hgs = imshow(hit,'InitialMagnification','fit','Parent',hax);
        axis(hax,'image');
        board(mypick(1),mypick(2)) = board(mypick(1),mypick(2)) + 10;
        mypickboard(mypick(1),mypick(2)) = 2;
    else
        hax = handles.(['Caxes',num2str(mypick(1)),num2str(mypick(2))]);
        hgs = imshow(miss,'InitialMagnification','fit','Parent',hax);
        axis(hax,'image');
        mypickboard(mypick(1),mypick(2)) = 1;
    end
    
    
    %% This part updates the players board with the computer's pick
    switch handles.CPUdifficultyPopup.Value %deal with outputs of this function %CHANGE ALL THIS SHIT
        case 1
            [myboard,pickboard,recenthit,pick] = EasyAlgorithmF(myboard,pickboard,recenthit);
            %pickcount1 = 0;
            %ocount1 = 0;  %etc etc depending on final outputs
        case 2
            [myboard,pickboard,recenthit,pick] = MediumAlgorithmF(myboard,pickboard,recenthit);
            %pickcount1 = 0;
            %ocount1 = 0; % etc etc depending on final outputs
        case 3
           [myboard,pickboard,recenthit,pickcount,ocount,pick] = HardAlgorithmF(myboard,pickboard,recenthit,pickcount,ocount);

            %[board,pickboard,recenthit,pickcount,ocount] = HardAlgorithmF(board1,pickboard1,recenthit1,pickcount1,ocount1);
            %case 4
            %[board,pickboard,recenthit,pickcount,ocount] = ExpertAlgorithmF(board1,pickboard1,recenthit1,pickcount1,ocount1);
    end
    if pickboard(pick(1),pick(2)) == 2
        hax = handles.(['axes',num2str(pick(1)),num2str(pick(2))]);
        hgs = imshow(comphit,'InitialMagnification','fit','Parent',hax);
        axis(hax,'image');
    else
        hax = handles.(['axes',num2str(pick(1)),num2str(pick(2))]);
        hgs = imshow(miss,'InitialMagnification','fit','Parent',hax);
        axis(hax,'image');
        
    end
    EventCheckF(board,myboard);
end

