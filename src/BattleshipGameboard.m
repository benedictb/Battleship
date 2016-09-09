function varargout = BattleshipGameboard(varargin)
%BATTLESHIPGAMEBOARD M-file for BattleshipGameboard.fig
%      BATTLESHIPGAMEBOARD, by itself, creates a new BATTLESHIPGAMEBOARD or raises the existing
%      singleton*.
%
%      H = BATTLESHIPGAMEBOARD returns the handle to a new BATTLESHIPGAMEBOARD or the handle to
%      the existing singleton*.
%
%      BATTLESHIPGAMEBOARD('Property','Value',...) creates a new BATTLESHIPGAMEBOARD using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to BattleshipGameboard_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      BATTLESHIPGAMEBOARD('CALLBACK') and BATTLESHIPGAMEBOARD('CALLBACK',hObject,...) call the
%      local function named CALLBACK in BATTLESHIPGAMEBOARD.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BattleshipGameboard

% Last Modified by GUIDE v2.5 22-Apr-2015 16:11:26

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @BattleshipGameboard_OpeningFcn, ...
    'gui_OutputFcn',  @BattleshipGameboard_OutputFcn, ...
    'gui_LayoutFcn',  [], ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before BattleshipGameboard is made visible.
function BattleshipGameboard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for BattleshipGameboard
handles = guidata(hObject);

global eventHistory
eventHistory = [0 0 0 0 0];

[board,endpoints,pickboard,recenthit,pickcount,ocount] = ShipPlacerF;

HumanPlaceShips
uiwait(HumanPlaceShips);
global globalarray;
global randombool;
myendpoints = globalarray;
random = randombool;
myboard = zeros(10);
mypickboard = zeros(10);
if ~random
    if myendpoints(1,5) == 1
        myboard(myendpoints(1,1)-4:myendpoints(1,1),(myendpoints(1,2))) = 1;
    else myboard(myendpoints(1,1),(myendpoints(1,2):myendpoints(1,2)+4)) = 1;
    end
    if myendpoints(2,5) == 1
        myboard(myendpoints(2,1)-3:myendpoints(2,1),(myendpoints(2,2))) = 2;
    else myboard(myendpoints(2,1),(myendpoints(2,2):myendpoints(2,2)+3)) = 2;
    end
    if myendpoints(3,5) == 1
        myboard(myendpoints(3,1)-2:myendpoints(3,1),(myendpoints(3,2))) = 3;
    else myboard(myendpoints(3,1),(myendpoints(3,2):myendpoints(3,2)+2)) = 3;
    end
    if myendpoints(4,5) == 1
        myboard(myendpoints(4,1)-2:myendpoints(4,1),(myendpoints(4,2))) = 4;
    else myboard(myendpoints(4,1),(myendpoints(4,2):myendpoints(4,2)+2)) = 4;
    end
    if myendpoints(5,5) == 1
        myboard(myendpoints(5,1)-1:myendpoints(5,1),(myendpoints(5,2))) = 5;
    else myboard(myendpoints(5,1),(myendpoints(5,2):myendpoints(5,2)+1)) = 5;
    end
    handles.myboard = myboard;
    handles.myendpoints = myendpoints;
    handles.mypickboard = mypickboard;
    handles.myrecenthit = 0;
    handles.mypickcount = 0;
    handles.myocount = 0;
    
    handles.board = board;
    handles.endpoints = endpoints;
    handles.pickboard = pickboard;
    handles.recenthit = recenthit;
    handles.pickcount = pickcount;
    handles.ocount = ocount;
else %[handles.myboard,handles.myendpoints,handles.mypickboard,handles.myrecenthit,handles.pickcount,handles.ocount] = ShipPlacerF;
    [myboard,myendpoints,mypickboard,myrecenthit,mypickcount,myocount] = ShipPlacerF;
    handles.myboard = myboard;
    handles.myendpoints = myendpoints;
    handles.mypickboard = mypickboard;
    handles.myrecenthit = myrecenthit;
    handles.mypickcount = mypickcount;
    handles.myocount = myocount;
    
    handles.board = board;
    handles.endpoints = endpoints;
    handles.pickboard = pickboard;
    handles.recenthit = recenthit;
    handles.pickcount = pickcount;
    handles.ocount = ocount;
end
initialboardupdateF(handles,myboard,myendpoints);

guidata(hObject, handles);


% UIWAIT makes BattleshipGameboard wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BattleshipGameboard_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
handles = guidata(hObject);
varargout{1} = handles.output;



% --- Executes on selection change in CPUdifficultyPopup.
function CPUdifficultyPopup_Callback(hObject, eventdata, handles)
% hObject    handle to CPUdifficultyPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CPUdifficultyPopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CPUdifficultyPopup


% --- Executes during object creation, after setting all properties.
function CPUdifficultyPopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CPUdifficultyPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in rowPopup.
function rowPopup_Callback(hObject, eventdata, handles)
% hObject    handle to rowPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns rowPopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from rowPopup


% --- Executes during object creation, after setting all properties.
function rowPopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rowPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in columnPopup.
function columnPopup_Callback(hObject, eventdata, handles)
% hObject    handle to columnPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns columnPopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from columnPopup


% --- Executes during object creation, after setting all properties.
function columnPopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to columnPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fireButton.
function fireButton_Callback(hObject, eventdata, handles)
% hObject    handle to fireButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
[handles.myboard,handles.mypickboard,handles.board,handles.pickboard,handles.pickcount,handles.ocount,handles.recenthit] = boardupdateF(handles,handles.myboard,handles.mypickboard,handles.board,handles.pickboard,handles.pickcount,handles.ocount,handles.recenthit);
%,myboard,mypickboard,board,pickboard,recenthit,eventHistory)
guidata(hObject, handles);

% --- Executes on button press in CPUsimButton.
function CPUsimButton_Callback(hObject, eventdata, handles)
% hObject    handle to CPUsimButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GameSimTool;

% --- Executes on button press in shipplacePush.
function shipplacePush_Callback(hObject, eventdata, handles)
% hObject    handle to shipplacePush (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);

global eventHistory
eventHistory = [0 0 0 0 0];

[board,endpoints,pickboard,recenthit,pickcount,ocount] = ShipPlacerF;

HumanPlaceShips
uiwait(HumanPlaceShips);
global globalarray;
global randombool;
myendpoints = globalarray;
random = randombool;
myboard = zeros(10);
mypickboard = zeros(10);
if ~random
    if myendpoints(1,5) == 1
        myboard(myendpoints(1,1)-4:myendpoints(1,1),(myendpoints(1,2))) = 1;
    else myboard(myendpoints(1,1),(myendpoints(1,2):myendpoints(1,2)+4)) = 1;
    end
    if myendpoints(2,5) == 1
        myboard(myendpoints(2,1)-3:myendpoints(2,1),(myendpoints(2,2))) = 2;
    else myboard(myendpoints(2,1),(myendpoints(2,2):myendpoints(2,2)+3)) = 2;
    end
    if myendpoints(3,5) == 1
        myboard(myendpoints(3,1)-2:myendpoints(3,1),(myendpoints(3,2))) = 3;
    else myboard(myendpoints(3,1),(myendpoints(3,2):myendpoints(3,2)+2)) = 3;
    end
    if myendpoints(4,5) == 1
        myboard(myendpoints(4,1)-2:myendpoints(4,1),(myendpoints(4,2))) = 4;
    else myboard(myendpoints(4,1),(myendpoints(4,2):myendpoints(4,2)+2)) = 4;
    end
    if myendpoints(5,5) == 1
        myboard(myendpoints(5,1)-1:myendpoints(5,1),(myendpoints(5,2))) = 5;
    else myboard(myendpoints(5,1),(myendpoints(5,2):myendpoints(5,2)+1)) = 5;
    end
    handles.myboard = myboard;
    handles.myendpoints = myendpoints;
    handles.mypickboard = mypickboard;
    handles.myrecenthit = 0;
    handles.mypickcount = 0;
    handles.myocount = 0;
    
    handles.board = board;
    handles.endpoints = endpoints;
    handles.pickboard = pickboard;
    handles.recenthit = recenthit;
    handles.pickcount = pickcount;
    handles.ocount = ocount;
else %[handles.myboard,handles.myendpoints,handles.mypickboard,handles.myrecenthit,handles.pickcount,handles.ocount] = ShipPlacerF;
    [myboard,myendpoints,mypickboard,myrecenthit,mypickcount,myocount] = ShipPlacerF;
    handles.myboard = myboard;
    handles.myendpoints = myendpoints;
    handles.mypickboard = mypickboard;
    handles.myrecenthit = myrecenthit;
    handles.mypickcount = mypickcount;
    handles.myocount = myocount;
    
    handles.board = board;
    handles.endpoints = endpoints;
    handles.pickboard = pickboard;
    handles.recenthit = recenthit;
    handles.pickcount = pickcount;
    handles.ocount = ocount;
end
initialboardupdateF(handles,myboard,myendpoints);

guidata(hObject, handles);