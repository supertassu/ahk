#SingleInstance force
SetTitleMatchMode 2

#IfWinActive, Minecraft
Numpad0::
Send {Esc}
MouseMove, 0, -30, 2, R
MouseClick, left
Return
#IfWinActive
