#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

brickinthewall = 3MRHfXVCVf9MGZL9d6YEHkr2BZbDAvr41B

Sleep, 6000
WinMove, NiceHashMiner, , 0, 0,

;wallet
Sleep, 500
MouseClick, Left, 80, 50

Sleep, 500
MouseClick, Left, 80, 100

Sleep, 500
SendInput, %brickinthewall%

Sleep, 500
Send, {Enter}

;worker
Sleep, 500
MouseClick, Left, 200, 50

Sleep, 500
MouseClick, Left, 200, 100

SendInput, %A_UserName%
Sleep, 500
SendInput, %A_ComputerName%

Sleep, 500
Send, {Enter}

;config
Sleep, 500
MouseClick, Left, 420, 50

Sleep, 500
MouseClick, Left, 420, 100

;general section
Sleep, 500
Loop, 3
{
	Sleep, 250
	Send {Tab}
	Sleep, 250
}

Sleep, 500
Send, 0

Sleep, 500
MouseMove, 385, 200

Sleep, 250
PixelGetColor, color, 385, 200
Sleep, 250
If (color != 0xFFFFFF){
	Sleep, 250
	MouseClick, Left, 385, 200
}
MouseClick, Left, 410, 150
Sleep, 500
MouseClick, Left, 410, 175

;mining section
MouseClick, Left, 25, 145

MouseMove, 160, 145
MouseMove, 160, 210
MouseMove, 160, 260

;logging section
MouseClick, Left, 25, 175
MouseMove, 160, 145





















;WinGetPos, X, Y, , , A  ; "A" to get the active window's pos.
;Sleep, 500
;MsgBox, The active window is at %X%`,%Y%