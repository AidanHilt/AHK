#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Initializing
Mode:="Default"


;Context switching
^+p::
	Mode:="Python"
	return

^+j::
	Mode:="Java"
	return

^+d::
	Mode:="Default"
	return

^+a::
	Mode:="AHK"
	return



;Standard chat shortcuts
::wu::
	If(Mode="Default"){
		Send, {BackSpace}
		Send, What's up?
		Send, {Enter}
	}
return

::rt::
	If(Mode="Default"){
		Send, {BackSpace}
		Send, {Raw}Random thought?
		Send, {Enter}
	}
return

;Shortcuts for Java and Python and AHK
::re::
	If(Mode="Java" or Mode="Python" or Mode="AHK"){
		Send, {BackSpace}
		Send, {Raw}return
		return
	}Else{
		Send, {BackSpace}
		Send, re
	}
return

;Shortcuts for Python
::pr::
	If(Mode="Python"){
		Send, print(
	}


;Shortcuts for AutoHotKey
::r::
	if(Mode="AHK"){
		Send, Run,
		return
}

::we::
	if(Mode="AHK"){
		Send, WinExist(
		return
}

::wa::
	if(Mode="AHK"){
		Send, WinActive(
		return
	}
