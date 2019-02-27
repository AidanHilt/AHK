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
Numpad1::
	if(Mode="Shortcuts"){
		WinMaximize, A
	}
	return

#If (Mode!="Standard")
Numpad2::
	if(Mode="Shortcuts"){
		Send, #{Down}
	}
	return

#If (Mode!="Standard")
Numpad3::
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
Numpad4::
	if(Mode="German"){
		Send ä
	}

	if(Mode="Shortcuts"){
		Send, #{Left}
	}
	return

#If (Mode!="Standard")
Numpad5::
	if(Mode="German"){
		Send ö
	}

	if(Mode="Shortcuts"){
			Suspend
			RunWait shortcut.py
			Suspend
	}
	return

#If (Mode!="Standard")
Numpad6::
	if(Mode="German"){
		Send ü
	}

	if(Mode="Shortcuts"){
		Send, #{Right}
	}
	return

#If (Mode!="Standard")
Numpad7::
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
Numpad8::
	if(Mode="German"){
		Send Ö
	}

	if(Mode="Editing"){
		Send ^c
	}

	if(Mode="Shortcuts"){
		Send, #{Up}
	}
	return

#If (Mode!="Standard")
Numpad9::
	if(Mode="German"){
		Send Ü
	}

	if(Mode="Editing"){
		Send ^v
	}

	if(Mode="Shortcuts"){
		Send, #{Tab}
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