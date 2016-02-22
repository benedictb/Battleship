function  EventCheckF( board,myboard)
%Checks for sunk ships and game ending.
sink1 = true;
sink2 = true;
sink3 = true;
sink4 = true;
sink5 = true;
lose = true;

global eventHistory;

for irow = 1:10 %checks for unsuck ship pieces
    for icolumn = 1:10
        if board(irow,icolumn) == 1
            sink1 = false;
        end
        if board(irow,icolumn) == 2
            sink2 = false;
        end
        if board(irow,icolumn) == 3
            sink3 = false;
        end
        if board(irow,icolumn) == 4
            sink4 = false;
        end
        if board(irow,icolumn) == 5
            sink5 = false;
        end
    end
end
if sink1 ==  true && eventHistory(1) == 0
    h = msgbox('Aircraft Carrier Sunk!');
    eventHistory(1) = 1;
end
if sink2 ==  true && eventHistory(2) == 0
    h = msgbox('Battleship Sunk!');
    eventHistory(2) = 1;
end
if sink3 ==  true && eventHistory(3) == 0
    h = msgbox('Submarine Sunk!');
    eventHistory(3) = 1;
end
if sink4 ==  true && eventHistory(4) == 0
    h = msgbox('Destroyer Sunk!');
    eventHistory(4) = 1;
end
if sink5 ==  true && eventHistory(5) == 0
    h = msgbox('Patrol Boat Sunk! (that one''s a toughie to find)');
    eventHistory(5) = 1;
end
if eventHistory(1:5) == 1
    myicon=imread('YouWin.png')
    h = msgbox('YOU WON! (wow)','Success','custom',myicon);
    
end
for irow = 1:10
    for icolumn = 1:10
        if myboard(irow,icolumn) > 0 && myboard(irow,icolumn)< 11;
            lose = false;
        end
    end
end
if lose
    h = msgbox('You Lose:( Press Place Ships to play again! ;D');
end

