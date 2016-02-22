function initialboardupdateF( handles,board,endpoints ) %only has to update the most recent of choices
%Yo you know what it is. Initializes the board homie. May take a while
water = imread('water.png');
miss = imread('userMiss2.png');
hit = imread('userHit.png');
ship = imread('shipPiece.png');
numbers = imread('VerticalNumbers.png');
letters = imread('HorizontalLetters.png');

hax = handles.humanrowAxes;
hgs = imshow(numbers,'InitialMagnification','fit','Parent',hax);
axis(hax,'image');
hax = handles.humancolumnAxes;
hgs = imshow(letters,'InitialMagnification','fit','Parent',hax);
axis(hax,'image');
hax = handles.CPUrowAxes;
hgs = imshow(numbers,'InitialMagnification','fit','Parent',hax);
axis(hax,'image');
hax = handles.CPUcolumnAxes;
hgs = imshow(letters,'InitialMagnification','fit','Parent',hax);
axis(hax,'image');

for irow = 1:10
    for icolumn = 1:10
        hax = handles.(['Caxes',num2str(irow),num2str(icolumn)]);
        hgs = imshow(water,'InitialMagnification','fit','Parent',hax);
        axis(hax,'image');
    end
end

if endpoints(1,5) == 1
    pic = imread('5Long_Vertical_1.png');
    hax = handles.(['axes',num2str(endpoints(1,1)),num2str(endpoints(1,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Vertical_2.png');
    hax = handles.(['axes',num2str(endpoints(1,1)-1),num2str(endpoints(1,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Vertical_3.png');
    hax = handles.(['axes',num2str(endpoints(1,1)-2),num2str(endpoints(1,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Vertical_4.png');
    hax = handles.(['axes',num2str(endpoints(1,1)-3),num2str(endpoints(1,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Vertical_5.png');
    hax = handles.(['axes',num2str(endpoints(1,1)-4),num2str(endpoints(1,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
elseif endpoints(1,5) == 2
    
    pic = imread('5Long_Horizontal_1.png');
    hax = handles.(['axes',num2str(endpoints(1,1)),num2str(endpoints(1,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Horizontal_2.png');
    hax = handles.(['axes',num2str(endpoints(1,1)),num2str(endpoints(1,2)+1)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Horizontal_3.png');
    hax = handles.(['axes',num2str(endpoints(1,1)),num2str(endpoints(1,2)+2)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Horizontal_4.png');
    hax = handles.(['axes',num2str(endpoints(1,1)),num2str(endpoints(1,2)+3)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('5Long_Horizontal_5.png');
    hax = handles.(['axes',num2str(endpoints(1,1)),num2str(endpoints(1,2)+4)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
else disp('fuck');
end

if endpoints(2,5) == 1
    pic = imread('4Long_Vertical_1.png');
    hax = handles.(['axes',num2str(endpoints(2,1)),num2str(endpoints(2,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('4Long_Vertical_2.png');
    hax = handles.(['axes',num2str(endpoints(2,1)-1),num2str(endpoints(2,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('4Long_Vertical_3.png');
    hax = handles.(['axes',num2str(endpoints(2,1)-2),num2str(endpoints(2,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('4Long_Vertical_4.png');
    hax = handles.(['axes',num2str(endpoints(2,1)-3),num2str(endpoints(2,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
elseif endpoints(2,5) == 2
    pic = imread('4Long_Horizontal_1.png');
    hax = handles.(['axes',num2str(endpoints(2,1)),num2str(endpoints(2,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('4Long_Horizontal_2.png');
    hax = handles.(['axes',num2str(endpoints(2,1)),num2str(endpoints(2,2)+1)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('4Long_Horizontal_3.png');
    hax = handles.(['axes',num2str(endpoints(2,1)),num2str(endpoints(2,2)+2)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('4Long_Horizontal_4.png');
    hax = handles.(['axes',num2str(endpoints(2,1)),num2str(endpoints(2,2)+3)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
else disp('fuck')
end

if endpoints(3,5) == 1
    pic = imread('3LongB_Vertical_1.png');
    hax = handles.(['axes',num2str(endpoints(3,1)),num2str(endpoints(3,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongB_Vertical_2.png');
    hax = handles.(['axes',num2str(endpoints(3,1)-1),num2str(endpoints(3,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongB_Vertical_3.png');
    hax = handles.(['axes',num2str(endpoints(3,1)-2),num2str(endpoints(3,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
elseif endpoints(3,5) == 2
    pic = imread('3LongB_Horizontal_1.png');
    hax = handles.(['axes',num2str(endpoints(3,1)),num2str(endpoints(3,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongB_Horizontal_2.png');
    hax = handles.(['axes',num2str(endpoints(3,1)),num2str(endpoints(3,2)+1)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongB_Horizontal_3.png');
    hax = handles.(['axes',num2str(endpoints(3,1)),num2str(endpoints(3,2)+2)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
else disp('fuck')
end

if endpoints(4,5) == 1
    pic = imread('3LongA_Vertical_1.png');
    hax = handles.(['axes',num2str(endpoints(4,1)),num2str(endpoints(4,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongA_Vertical_2.png');
    hax = handles.(['axes',num2str(endpoints(4,1)-1),num2str(endpoints(4,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongA_Vertical_3.png');
    hax = handles.(['axes',num2str(endpoints(4,1)-2),num2str(endpoints(4,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
elseif endpoints(4,5) == 2
    pic = imread('3LongA_Horizontal_1.png');
    hax = handles.(['axes',num2str(endpoints(4,1)),num2str(endpoints(4,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongA_Horizontal_2.png');
    hax = handles.(['axes',num2str(endpoints(4,1)),num2str(endpoints(4,2)+1)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('3LongA_Horizontal_3.png');
    hax = handles.(['axes',num2str(endpoints(4,1)),num2str(endpoints(4,2)+2)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
else disp('fuck')
end

if endpoints(5,5) == 1
    pic = imread('2Long_Vertical_1.png');
    hax = handles.(['axes',num2str(endpoints(5,1)),num2str(endpoints(5,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('2Long_Vertical_2.png');
    hax = handles.(['axes',num2str(endpoints(5,1)-1),num2str(endpoints(5,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
elseif endpoints(5,5) == 2
    pic = imread('2Long_Horizontal_1.png');
    hax = handles.(['axes',num2str(endpoints(5,1)),num2str(endpoints(5,2))]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
    pic = imread('2Long_Horizontal_2.png');
    hax = handles.(['axes',num2str(endpoints(5,1)),num2str(endpoints(5,2)+1)]);
    hgs = imshow(pic,'InitialMagnification','fit','Parent',hax);
    axis(hax,'image');
    
else disp('fuck')
end

for irow = 1:10
    for icolumn = 1:10
        if board(irow,icolumn) == 0
            hax = handles.(['axes',num2str(irow),num2str(icolumn)]);
            hgs = imshow(water,'InitialMagnification','fit','Parent',hax);
            axis(hax,'image');
        end
    end
end


