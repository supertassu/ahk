#SingleInstance force

; Volume Mute: universal back
; Long press; close current window
Volume_Mute::
KeyWait, Volume_Mute, T0.75
if ErrorLevel
    PostMessage, 0x112, 0xF060,,, A ; magically close current app
else
    if WinActive("ahk_class MozillaWindowClass")
        Send ^+{tab}
    if WinActive("ahk_class Chrome_WidgetWin_1")
        Send ^+{tab}
    if WinActive("ahk_exe explorer.exe")
        Send !{Up}
return

; the chrome button
Media_Stop::
if not WinExist("ahk_exe chrome.exe")
	Run, chrome.exe
if WinActive("ahk_exe chrome.exe")
	Send ^{tab}
else
	WinActivate ahk_exe chrome.exe
return

; one-click alt tab
Media_Next::Send !+{Tab}
