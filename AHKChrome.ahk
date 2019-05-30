#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

Change

#IfWinActive ahk_exe chrome.exe
; Go to the search bar: Alt + Num0
!Numpad0::
    Send, {F6}
return
; Go back or forward in history: Alt + / and Alt + *
!NumpadDiv::
    Send, !{Left}
return
!NumpadMult::
    Send, !{Right}
return
; Refresh page
!NumpadEnter::
    Send, {F5}
return
; Open new tab: Ctrl + Num0
^Numpad0::
    Send, ^t
return
; Close current tab: Ctrl + Enter
^NumpadEnter::
    Send, ^w
return
; Move between tabs: Ctrl + / and Ctrl + * ; Use chrome-shortcut Ctrl + Num to move to a specific tab
^NumpadDiv::
    Send, ^+{Tab}
return
^NumpadMult::
    Send, ^{Tab}
return

; Switch to the n-th link when searching: Win + Number
#Numpad1::
    Send {F6}
    SendInput javascript: document.getElementsByClassName("r")[0].firstElementChild.click(){enter}
return
#Numpad2::
    Send {F6}
    SendInput javascript: document.getElementsByClassName("r")[1].firstElementChild.click(){enter}
return
#Numpad3::
    Send {F6}
    SendInput javascript: document.getElementsByClassName("r")[2].firstElementChild.click(){enter}
return
#Numpad4::
    Send {F6}
    SendInput javascript: document.getElementsByClassName("r")[3].firstElementChild.click(){enter}
return
#Numpad5::
    Send {F6}
    SendInput javascript: document.getElementsByClassName("r")[4].firstElementChild.click(){enter}
return
#Numpad6::
    Send {F6}
    SendInput javascript: document.getElementsByClassName("r")[5].firstElementChild.click(){enter}
return

