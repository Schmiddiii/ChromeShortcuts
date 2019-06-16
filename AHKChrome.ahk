#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

activ:=true


#IfWinActive ahk_exe chrome.exe
:*:qq::
    activ:=NOT activ
return
#If activ AND WinActive("ahk_exe chrome.exe")
; #IfWinActive ahk_exe chrome.exe
; Go to the search bar: gs 
:*:gs::
    Send, {F6}
return
; Go back or forward in history: pb and pB or h and l
:*C:pb::
    Send, !{Left}
return
:*C:pB::
    Send, !{Right}
return
:*C:h::
    Send, !{Left}
return
:*C:l::
    Send !{Right}
return
; Refresh tab: pr
:*:pr::
    Send, {F5}
return
; Open new tab: to
:*:to::
    Send, ^t
return
; Close current tab: tc 
:*:tc::
    Send, ^w
return
; Move between tabs: tf and tF 
:*C:ts::
    Send, ^{Tab}
return
:*C:tS::
    Send, ^+{Tab}
return

; Move up and down: j and k
:*C:j::
    Send {Down}
return
:*C:k::
    Send {Up}
return

; Switch to the n-th link when searching: Win + Number
:*:o1::
    Send {F6}
    SendInput jajavascript:document.getElementsByClassName("r")[0].firstElementChild.click(){enter}
return
:*:o2::
    Send {F6}
    SendInput jajavascript:document.getElementsByClassName("r")[1].firstElementChild.click(){enter}
return
:*:o3::
    Send {F6}
    SendInput jajavascript:document.getElementsByClassName("r")[2].firstElementChild.click(){enter}
return
:*:o4::
    Send {F6}
    SendInput jajavascript:document.getElementsByClassName("r")[3].firstElementChild.click(){enter}
return
:*:o5::
    Send {F6}
    SendInput jajavascript:document.getElementsByClassName("r")[4].firstElementChild.click(){enter}
return
:*:o6::
    Send {F6}
    SendInput jajavascript:document.getElementsByClassName("r")[5].firstElementChild.click(){enter}
return
