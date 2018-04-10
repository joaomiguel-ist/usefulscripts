#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, Force
toggle  :=  0
return

~::
    toggle  := !toggle
    if (toggle = 1)
        MonitorPower(2)
    else
        MonitorPower(-1)
return

MonitorPower(power){
    ; 0xF170 is the windows system command for monitor power
    ; LParam settings:
    ;   -1  Power on display
    ;   ;1   Low power mode
    ;   2   Monitor off
    ; SendMessage, msg, wparam, lparam, control, wintitle
    SendMessage, 0x112, 0xF170, % power,, Program Manager
    return
}