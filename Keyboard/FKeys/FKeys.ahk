#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Active:=True

!s::Active:=True

!n::Active:=False

F12::
	if Active{
		Active:=False
	}else{
		Active:=True
	}
	return

#If Active
F1::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, {Alt Down}
		Send, ``
		Send, {Alt up}
	}Else{
		trueClipboard:=Clipboard
		Send, ^c
		Sleep, 300
		RunWait, "D:\Scripts\AHK\Keyboard\Helper Scripts\UpperAndLower.pyw"
		Send, ^v
		Sleep, 300
		Clipboard:=trueClipboard
		return
	}
	return

#If Active
F2::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, !^L
	}Else{
		trueClipboard:=Clipboard
		Send, ^c
		Sleep, 300
		RunWait, "D:\Scripts\AHK\Keyboard\Helper Scripts\Woke.pyw"
		Send, ^v
		Sleep, 300
		Clipboard:=trueClipboard
		return
	}
	return

#If Active
F3::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, ^+-
	}Else{
		Run, E:/Emby/system/EmbyServer.exe
	}
	return

#If Active
F4::
	if(WinActive("ahk_exe pycharm64.exe")){
		Send, ^+=
	}Else{
		Run, D:\Program Files (x86)\PyCharm Community Edition 2018.3.4\bin\pycharm64.exe
	}
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

