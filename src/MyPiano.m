%---------Designer:Chen Tianyang--------%
%-----------Time:29.8.2016--------------%
%------  Contact:tychen@whu.edu.cn  ----%
%------  Content:MyPiano  --------------%

function varargout = MyPiano(varargin)
% MYPIANO MATLAB code for MyPiano.fig
%      MYPIANO, by itself, creates a new MYPIANO or raises the existing
%      singleton*.
%
%      H = MYPIANO returns the handle to a new MYPIANO or the handle to
%      the existing singleton*.
%
%      MYPIANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYPIANO.M with the given input arguments.
%
%      MYPIANO('Property','Value',...) creates a new MYPIANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MyPiano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MyPiano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MyPiano

% Last Modified by GUIDE v2.5 15-Jul-2017 13:18:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MyPiano_OpeningFcn, ...
                   'gui_OutputFcn',  @MyPiano_OutputFcn, ...
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


% --- Executes just before MyPiano is made visible.
function MyPiano_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MyPiano (see VARARGIN)

% Choose default command line output for MyPiano
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MyPiano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MyPiano_OutputFcn(hObject, eventdata, handles) 
smile1 = imread('smile1.jpg');
s = 'Welcome To MyPiano!';         
hs = msgbox(s,'Welcome!','custom',smile1);      
ht = findobj(hs, 'Type', 'text');                %change the size of words
set(ht, 'FontSize', 12, 'Unit', 'normal','FontName','Times New Roman');
%position [a b c d]determine the position of the msgbox, [a b] represent the coordinate of the point
% in the lower left quarter，c and d respectively express the width and height of the msgbox.
%It will show the former msgbox，setting proper coordinate will make the latter msgbox cover the former one.
set(hs,'Position',[480 380 280 80]);       
fn = uigetfile('WelcomeToMyPiano.wav','Open File');
[y,fs] = audioread(fn);
sound(y,fs);
varargout{1} = handles.output;


%function dawy(y,t)
function drawy(y,t)
 %Vectors must be the same length.but the time frame showed in the axes can be adjusted，like number'100'can be changed
plot(t(1:100),y(1:100));       
xlabel('time (s)');ylabel('amplitude');
zoom on;


%function drawfft(y,fs)
function drawfft(y,fs)
N=1024;                 % make a self-defined drawfft(y,N,fs)
fy=fft(y,N); fy=abs(fy);
f=(0:N/2-1)*fs/N;
plot(f,fy(1:N/2));
xlabel('Frequency (Hz)');ylabel('amplitude');
zoom on;


function pushbutton1_Callback(hObject, eventdata, handles)
global fs t 
 %To control time frame to 3/8 s，make fs as 4000 in order to limite the frame of frequency to 1-2000，
 %and this range is suitable for the biggest frequency 1975.5 Hz
fs = 4000;t = (0:1500)*(1/fs);  
f=65.4;
y = cos(2*pi*f*t);                                    
sound(y);   
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);       %pay attention to the function set


function pushbutton2_Callback(hObject, eventdata, handles)
global fs t
f=73.4;
y = cos(2*pi*f*t);                                    
sound(y);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton3_Callback(hObject, eventdata, handles)
global fs t
f=82.4;
y = cos(2*pi*f*t); 
sound(y);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton4_Callback(hObject, eventdata, handles)
global fs t
f=87.3;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton5_Callback(hObject, eventdata, handles)
global fs t
f=98.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton6_Callback(hObject, eventdata, handles)
global fs t
f=110.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton7_Callback(hObject, eventdata, handles)
global fs t
f=123.5;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton11_Callback(hObject, eventdata, handles)
global fs t
f=130.8;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton12_Callback(hObject, eventdata, handles)
global fs t
f=146.8;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton13_Callback(hObject, eventdata, handles)
global fs t
f=164.8;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton14_Callback(hObject, eventdata, handles)
global fs t
f=174.6;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton15_Callback(hObject, eventdata, handles)
global fs t
f=196.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton16_Callback(hObject, eventdata, handles)
global fs t
f=220.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton17_Callback(hObject, eventdata, handles)
global fs t
f=246.9;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton21_Callback(hObject, eventdata, handles)
global fs t
f=261.6;
y = cos(2*pi*f*t);                                      %The middke C key
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton22_Callback(hObject, eventdata, handles)
global fs t
f=293.7;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton23_Callback(hObject, eventdata, handles)
global fs t
f=329.6;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton24_Callback(hObject, eventdata, handles)
global fs t
f=349.2;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton25_Callback(hObject, eventdata, handles)
global fs t
f=392.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton26_Callback(hObject, eventdata, handles)
global fs t
f=440.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton27_Callback(hObject, eventdata, handles)
global fs t
f=493.9;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);



function pushbutton31_Callback(hObject, eventdata, handles)
global fs t
f=523.3;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton32_Callback(hObject, eventdata, handles)
global fs t
f=587.3;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton33_Callback(hObject, eventdata, handles)
global fs t
f=659.3;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton34_Callback(hObject, eventdata, handles)
global fs t
f=698.5;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton35_Callback(hObject, eventdata, handles)
global fs t
f=784.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton36_Callback(hObject, eventdata, handles)
global fs t
f=880.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton37_Callback(hObject, eventdata, handles)
global fs t
f=987.8;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton41_Callback(hObject, eventdata, handles)
global fs t
f=1046.5;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton42_Callback(hObject, eventdata, handles)
global fs t
f=1174.7;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton43_Callback(hObject, eventdata, handles)
global fs t
f=1318.5;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1); 
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton44_Callback(hObject, eventdata, handles)
global fs t
f=1396.9;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton45_Callback(hObject, eventdata, handles)
global fs t
f=1568.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton46_Callback(hObject, eventdata, handles)
global fs t
f=1760.0;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function pushbutton47_Callback(hObject, eventdata, handles)
global fs t
f=1975.5;
y = cos(2*pi*f*t);                                    
sound(y,fs);
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);


function edit1_CreateFcn(hObject, eventdata, handles)
set(findobj('Tag','edit1'),'String','(显示频率)');          %pay attention to the function set
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pushbuttonExit_Callback(hObject, eventdata, handles)
q = questdlg('Exit this program？','Tips');
if strcmp(q,'Yes')==1
    close;
end


function radiobutton1_Callback(hObject, eventdata, handles)
axes(handles.axes1);
grid off;
axes(handles.axes2);
grid off;


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
axes(handles.axes1);
grid on;
axes(handles.axes2);
grid on;


% --------------------------------------------------------------------
function uitoggletool1_OffCallback(hObject, eventdata, handles)
axes(handles.axes1);
grid off;
axes(handles.axes2);
grid off;


% --------------------------------------------------------------------
function uitoggletool1_OnCallback(hObject, eventdata, handles)
axes(handles.axes1);
grid on;
axes(handles.axes2);
grid on;


function listbox1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
if get(figure1,'CurrentCharacter')==68    %判断按下的是否是Q键  
%     name=get(handles.name,'String');  
%     psw=get(handles.psw,'String');  
%     if strcmp(name,'张三') && strcmp(psw,'123')%字符串比较  
%         delete(gcf);%关闭当前的窗口  
%         guide_mouse;%打开新的GUIDE  
%     end  
global fs t 
 %To control time frame to 3/8 s，make fs as 4000 in order to limite the frame of frequency to 1-2000，
 %and this range is suitable for the biggest frequency 1975.5 Hz
fs = 4000;t = (0:1500)*(1/fs);  
f=65.4;
y = cos(2*pi*f*t);                                    
sound(y);   
axes(handles.axes1);
drawy(y,t);
axes(handles.axes2);
drawfft(y,fs);
set(findobj('Tag','edit1'),'String',f);       %pay attention to the function set
end 



% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
