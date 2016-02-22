function varargout = GameSimTool(varargin)
% GAMESIMTOOL MATLAB code for GameSimTool.fig
%      GAMESIMTOOL, by itself, creates a new GAMESIMTOOL or raises the existing
%      singleton*.
%
%      H = GAMESIMTOOL returns the handle to a new GAMESIMTOOL or the handle to
%      the existing singleton*.
%
%      GAMESIMTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAMESIMTOOL.M with the given input arguments.
%
%      GAMESIMTOOL('Property','Value',...) creates a new GAMESIMTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GameSimTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GameSimTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GameSimTool

% Last Modified by GUIDE v2.5 21-Apr-2015 11:12:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GameSimTool_OpeningFcn, ...
                   'gui_OutputFcn',  @GameSimTool_OutputFcn, ...
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


% --- Executes just before GameSimTool is made visible.
function GameSimTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GameSimTool (see VARARGIN)

% Choose default command line output for GameSimTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GameSimTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GameSimTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ngamesEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ngamesEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ngamesEdit as text
%        str2double(get(hObject,'String')) returns contents of ngamesEdit as a double


% --- Executes during object creation, after setting all properties.
function ngamesEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ngamesEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in firstPop.
function firstPop_Callback(hObject, eventdata, handles)
% hObject    handle to firstPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns firstPop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from firstPop


% --- Executes during object creation, after setting all properties.
function firstPop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to firstPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in secondPop.
function secondPop_Callback(hObject, eventdata, handles)
% hObject    handle to secondPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns secondPop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from secondPop


% --- Executes during object creation, after setting all properties.
function secondPop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secondPop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in goButton.
function goButton_Callback(hObject, eventdata, handles)
% hObject    handle to goButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GameSimF(handles);
