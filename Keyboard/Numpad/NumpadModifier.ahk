#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Mode:= "Shortcuts"
LastMinimizedWindows:= Array()

^!n::
Mode:= "Standard"
return

^!l::
Mode:= "German"
return

^!e::
Mode:= "Editing"
return

^!s::
Mode:= "Shortcuts"
return

#If (Mode!="Standard")
NumpadEnd::
	if(Mode="Shortcuts"){
		WinMaximize, A
	}
	return

#If (Mode!="Standard")
NumpadDown::
	if(Mode="Shortcuts"){
		Send, #{Down}
	}
	return

#If (Mode!="Standard")
NumpadPgdn::
	if(Mode="Shortcuts"){
		KeyWait, Numpad3, T 0.45
		If(ErrorLevel){
			Send, {Escape}
			Sleep, 200
		}Else{
			Send, ^!{Tab}
		}
	}
	return

#If (Mode!="Standard")
NumpadLeft::
	if(Mode="German"){
		Send ä
	}

	if(Mode="Shortcuts"){
		Send, #{Left}
	}
	return

#If (Mode!="Standard")
NumpadClear::
	if(Mode="German"){
		Send ö
	}

	if(Mode="Shortcuts"){
			SetNumLockState, On
			Suspend
			RunWait shortcut.pyw
			Suspend
			SetNumLockState, Off
	}
	return

#If (Mode!="Standard")
NumpadRight::
	if(Mode="German"){
		Send ü
	}

	if(Mode="Shortcuts"){
		Send, #{Right}
	}
	return

#If (Mode!="Standard")
NumpadHome::
	if(Mode="German"){
		Send Ä
	}

	if(Mode="Editing"){
		Send, ^s
	}

	if(Mode="Shortcuts"){
		WinClose, A
	}
	return

#If (Mode!="Standard")
NumpadUp::
	if(Mode="German"){
		Send Ö
	}

	if(Mode="Editing"){
		Send ^c
	}

	if(Mode="Shortcuts"){
		WinActivate, 
	}
	return

#If (Mode!="Standard")
NumpadPgup::
	if(Mode="German"){
		Send Ü
	}

	if(Mode="Editing"){
		Send ^v
	}

	if(Mode="Shortcuts"){
		WinActivate, ahk_exe steamwebhelper.exe, , Friends List,
		WinMove, ahk_exe steamwebhelper.exe, , 1427, 409, 1125, 1062, , Friends List
		MouseClick, , 252, 1012
	}
	return

LastMinimizedWindow(){
    WinGet, Windows, List
    
    Loop, %Windows%{
        WinGet, WinState, MinMax, % "ahk_id" Windows%A_Index%
        
        if (WinState = -1)
            return Windows%A_Index%
    }
}

#If (Mode!="Standard")
NumpadSub::
	if(Mode="Shortcuts"){
		WinGet, LastMinimizedWindow, ID, A
		LastMinimizedWindows.Push(LastMinimizedWindow)
		WinMinimize, A
	}
	return

#If (Mode!="Standard")
NumpadAdd::
	if(Mode="Shortcuts"){
		MaxWindow:=LastMinimizedWindows[LastMinimizedWindows.MaxIndex()]
		WinRestore, ahk_id %MaxWindow%
		WinSet, Top, , ahk_id %MaxWindow%
		LastMinimizedWindows.Pop()
	}
	return