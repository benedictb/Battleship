function [board,pickboard,recenthit,pick] = EasyAlgorithmF(board,pickboard,recenthit)

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