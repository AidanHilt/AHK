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

::au::
	If(Mode="Default"){
		Send, {BackSpace}
		Send, {Raw}Anything up?
		Send, {Enter}
	}
return

;Shortcuts for Java and Python and AHK
#If Mode="Java" or Mode="Python" or Mode="AHK"
::re::
	return

;Shortcuts for Python
#If Mode="Python"
::pr:: print(


;Shortcuts for AutoHotKey
#If Mode="AHK"
	::r:: Run

#If Mode="AHK"
::we:: WinExist(

#If Mode="AHK"
::wa:: WinActive(
