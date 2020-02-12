f=figure('figure_position',[400,50],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.pbLoad=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7868590,0.8045455,0.1858974,0.0909091],'Relief','default','SliderStep',[0.01,0.1],'String','Load Image','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pbLoad','Callback','pbLoad_callback(handles)')
handles.pbGray=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7868590,0.6598485,0.1858974,0.0909091],'Relief','default','SliderStep',[0.01,0.1],'String','Gray Image','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pbGray','Callback','pbGray_callback(handles)')
handles.pbBinary=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7868590,0.5151515,0.1858974,0.0909091],'Relief','default','SliderStep',[0.01,0.1],'String','Binary','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pbBinary','Callback','pbBinary_callback(handles)')
handles.pbThresh=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7868590,0.3704545,0.1858974,0.0909091],'Relief','default','SliderStep',[0.01,0.1],'String','Threshold','Style','slider','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pbThresh','Callback','pbThresh_callback(handles)')
handles.Axes1= newaxes();handles.Axes1.margins = [ 0 0 0 0];handles.Axes1.axes_bounds = [0.0352564,0.0590909,0.7163462,0.8431818];handles.Axes1.auto_clear = 'on';
 
 
f.visible = "on";
 
 
//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////
 
function pbLoad_callback(handles)
//Write your callback for  pbLoad  here
fn = uigetfile('*');
S = imread(fn);
imshow(S);
 
// Save image to pass to another function
handles.S = S;
handles = resume(handles);
 
endfunction
 
function pbGray_callback(handles)
//Write your callback for  pbGray  here
S2 = rgb2gray(handles.S);
imshow(S2);
 
// Save image to pass to another function
handles.S2 = S2;
handles = resume(handles);
 
endfunction
 
 
function pbBinary_callback(handles)
//Write your callback for  pbBinary  here
val = handles.pbThresh.value;
S3 = im2bw(handles.S2,val);
imshow(S3); 
 
endfunction
 
function pbThresh_callback(handles)
//Write your callback for  pbThresh  here
pbBinary_callback(handles);
 
endfunction
