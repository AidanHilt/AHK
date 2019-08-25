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
	trueClipboard:=Clipboard
	Send, ^c
	Sleep, 300
	RunWait, "D:\Scripts\AHK\Keyboard\Helper Scripts\UpperAndLower.pyw"
	Send, ^v
	Sleep, 300
	Clipboard:=trueClipboard
	return

F2::
	trueClipboard:=Clipboard
	Send, ^c
	Sleep, 300
	RunWait, "D:\Scripts\AHK\Keyboard\Helper Scripts\Woke.pyw"
	Send, ^v
	Sleep, 300
	Clipboard:=trueClipboard
	return

F3::
	
	return


F4::
	
	return

F5::
	Run, C:/Windows/explorer.exe
	return

F6::
	if (WinActive("ahk_class CabinetWClass")){
		Send +{F10}
		Send {Down 3}
		Sleep, 50
		Send {Enter}
	}
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

