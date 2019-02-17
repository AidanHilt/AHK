#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Active:=True

!a::Active:=True

!n::Active:=False

#If Active
F1::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, {Alt Down}
		Send, ``
		Send, {Alt up}
	}Else{
		Run, firefox.exe
	}
	return

#If Active
F2::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, !^L
	}Else{
		Run, C:/Program Files/Oracle/VirtualBox/VirtualBox.exe
	}
	return

#If Active
F3::
	Run, E:/Emby/system/EmbyServer.exe
	return

#If Active
F4::
	Run, D:\Program Files (x86)\PyCharm Community Edition 2018.3.4\bin\pycharm64.exe
	return

#If Active
F5::
	Run, C:\Users\AidanTheGreat\AppData\Local\gitkraken\app-4.2.2\gitkraken.exe
	return

#If Active
F6::
	Run, D:/Java/EclipseOxygen/eclipse/eclipse.exe
	return

#If Active
F7::
	
	return

#If Active
F8::
	
	return

#If Active
F9::

	return

#If Active
F10::
	
	return

#If Active
F11::
	
	return

#If Active
F12::
	
	return

