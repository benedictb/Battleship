function varargout = HumanPlaceShips(varargin)
% HUMANPLACESHIPS MATLAB code for HumanPlaceShips.fig
%      HUMANPLACESHIPS, by itself, creates a new HUMANPLACESHIPS or raises the existing
%      singleton*.
%
%      H = HUMANPLACESHIPS returns the handle to a new HUMANPLACESHIPS or the handle to
%      the existing singleton*.
%
%      HUMANPLACESHIPS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HUMANPLACESHIPS.M with the given input arguments.
%
%      HUMANPLACESHIPS('Property','Value',...) creates a new HUMANPLACESHIPS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HumanPlaceShips_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HumanPlaceShips_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HumanPlaceShips

% Last Modified by GUIDE v2.5 22-Apr-2015 15:39:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HumanPlaceShips_OpeningFcn, ...
                   'gui_OutputFcn',  @HumanPlaceShips_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before HumanPlaceShips is made visible.
function HumanPlaceShips_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HumanPlaceShips (see VARARGIN)

% Choose default command line output for HumanPlaceShips
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HumanPlaceShips wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HumanPlaceShips_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in aircraftRpopup.
function aircraftRpopup_Callback(hObject, eventdata, handles)
% hObject    handle to aircraftRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns aircraftRpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from aircraftRpopup


% --- Executes during object creation, after setting all properties.
function aircraftRpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aircraftRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in aircraftCpopup.
function aircraftCpopup_Callback(hObject, eventdata, handles)
% hObject    handle to aircraftCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns aircraftCpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from aircraftCpopup


% --- Executes during object creation, after setting all properties.
function aircraftCpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aircraftCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in battleshipRpopup.
function battleshipRpopup_Callback(hObject, eventdata, handles)
% hObject    handle to battleshipRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns battleshipRpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from battleshipRpopup


% --- Executes during object creation, after setting all properties.
function battleshipRpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battleshipRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in battleshipCpopup.
function battleshipCpopup_Callback(hObject, eventdata, handles)
% hObject    handle to battleshipCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns battleshipCpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from battleshipCpopup


% --- Executes during object creation, after setting all properties.
function battleshipCpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battleshipCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in submarineRpopup.
function submarineRpopup_Callback(hObject, eventdata, handles)
% hObject    handle to submarineRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns submarineRpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from submarineRpopup


% --- Executes during object creation, after setting all properties.
function submarineRpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to submarineRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in submarineCpopup.
function submarineCpopup_Callback(hObject, eventdata, handles)
% hObject    handle to submarineCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns submarineCpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from submarineCpopup


% --- Executes during object creation, after setting all properties.
function submarineCpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to submarineCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in destroyerRpopup.
function destroyerRpopup_Callback(hObject, eventdata, handles)
% hObject    handle to destroyerRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns destroyerRpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from destroyerRpopup


% --- Executes during object creation, after setting all properties.
function destroyerRpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to destroyerRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in destroyerCpopup.
function destroyerCpopup_Callback(hObject, eventdata, handles)
% hObject    handle to destroyerCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns destroyerCpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from destroyerCpopup


% --- Executes during object creation, after setting all properties.
function destroyerCpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to destroyerCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in patrolRpopup.
function patrolRpopup_Callback(hObject, eventdata, handles)
% hObject    handle to patrolRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns patrolRpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from patrolRpopup


% --- Executes during object creation, after setting all properties.
function patrolRpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to patrolRpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in patrolCpopup.
function patrolCpopup_Callback(hObject, eventdata, handles)
% hObject    handle to patrolCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns patrolCpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from patrolCpopup


% --- Executes during object creation, after setting all properties.
function patrolCpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to patrolCpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in aircraftOpopup.
function aircraftOpopup_Callback(hObject, eventdata, handles)
% hObject    handle to aircraftOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns aircraftOpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from aircraftOpopup


% --- Executes during object creation, after setting all properties.
function aircraftOpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aircraftOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in battleshipOpopup.
function battleshipOpopup_Callback(hObject, eventdata, handles)
% hObject    handle to battleshipOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns battleshipOpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from battleshipOpopup


% --- Executes during object creation, after setting all properties.
function battleshipOpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battleshipOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in submarineOpopup.
function submarineOpopup_Callback(hObject, eventdata, handles)
% hObject    handle to submarineOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns submarineOpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from submarineOpopup


% --- Executes during object creation, after setting all properties.
function submarineOpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to submarineOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in destroyerOpopup.
function destroyerOpopup_Callback(hObject, eventdata, handles)
% hObject    handle to destroyerOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns destroyerOpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from destroyerOpopup


% --- Executes during object creation, after setting all properties.
function destroyerOpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to destroyerOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in patrolOpopup.
function patrolOpopup_Callback(hObject, eventdata, handles)
% hObject    handle to patrolOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns patrolOpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from patrolOpopup


% --- Executes during object creation, after setting all properties.
function patrolOpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to patrolOpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in placeshipsButton.
function placeshipsButton_Callback(hObject, eventdata, handles)
% hObject    handle to placeshipsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global globalarray;
global randombool
globalarray = [handles.aircraftRpopup.Value handles.aircraftCpopup.Value 0 0 handles.aircraftOpopup.Value;...
    handles.battleshipRpopup.Value handles.battleshipCpopup.Value 0 0 handles.battleshipOpopup.Value;...
    handles.submarineRpopup.Value handles.submarineCpopup.Value 0 0 handles.submarineOpopup.Value;...
    handles.destroyerRpopup.Value handles.destroyerCpopup.Value 0 0 handles.destroyerOpopup.Value;...
    handles.patrolRpopup.Value handles.patrolCpopup.Value 0 0 handles.patrolOpopup.Value];
randombool = false;
close(HumanPlaceShips);

% --- Executes on button press in randomButton.
function randomButton_Callback(hObject, eventdata, handles)
% hObject    handle to randomButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global globalarray;
global randombool

globalarray = [handles.aircraftRpopup.Value handles.aircraftCpopup.Value 0 0 handles.aircraftOpopup.Value;...
    handles.battleshipRpopup.Value handles.battleshipCpopup.Value 0 0 handles.battleshipOpopup.Value;...
    handles.submarineRpopup.Value handles.submarineCpopup.Value 0 0 handles.submarineOpopup.Value;...
    handles.destroyerRpopup.Value handles.destroyerCpopup.Value 0 0 handles.destroyerOpopup.Value;...
    handles.patrolRpopup.Value handles.patrolCpopup.Value 0 0 handles.patrolOpopup.Value];
randombool = true;
close(HumanPlaceShips);
