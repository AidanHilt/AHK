#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F1::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, {Alt Down}
		Send, ``
		Send, {Alt up}
	}Else{
		Run, firefox.exe
	}
	return
F2::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, !^L
	}Else{
		Run, C:/Program Files/Oracle/VirtualBox/VirtualBox.exe
	}
	return

F3::
	Run, E:/Emby/system/EmbyServer.exe
	return

F4::
	Run, D:\Program Files (x86)\PyCharm Community Edition 2018.3.4\bin\pycharm64.exe
	return

F5::
	Send, F5
	return

F6::
	Run, D:/Java/EclipseOxygen/eclipse/eclipse.exe
	return

F7::
	
	return

F8::
	
	return

F9::

	return

F10::
	
	return

F11::
	
	return

F12::
	
	return

