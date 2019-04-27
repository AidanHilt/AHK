#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
AltTab:= False

PgUp::
	if(AltTab){
		Send, {Delete}
	}else{
		Send, {PgUp}
	}

Del::
	if(AltTab){
		Send, !+{Tab}
	}
	else if(WinActive("ahk_exe firefox.exe")){
		Send, {Ctrl down}
		Send, {Shift down}
		Send, {Tab}
		Send, {Ctrl up}
		Send, {Shift Up}
	}Else{
		Send, {Del}
	}
	return

PgDn::
	if(AltTab){
		Send, !{Tab}
	}
	else if(WinActive("ahk_exe firefox.exe")){
		Send, ^{Tab}
	}Else{
		Send, {PgDn}
	}
	return

Home::
	if(AltTab){
		Send, {Enter}
		AltTab:=False
	}Else{
		Send, ^!{Tab}
		AltTab:=True
	}
	return

End::
	if(AltTab){
		Send, {Escape}
		AltTab:=False
	}Else{
		Send, {Home}
	}
	return

^1::
	trueClipboard:=Clipboard
	Send, ^c
	Sleep, 300
	RunWait, fixtext.pyw
	Send, ^v
	Sleep, 300
	Clipboard:=trueClipboard
	return

#If WinActive("ahk_exe pycharm64.exe")
'::
	KeyWait, ', T 0.45
	If(ErrorLevel){
		Suspend
		Send, {Raw}'''
		Suspend
		Sleep, 400
	}Else{
		Suspend
		Send, {Raw}'
		Suspend
	}
	return