#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent

;Pause::Pause

Sleep, 2500

While, True
{

	WinGetActiveTitle, text
	Sleep, 150
	WinGetClass, chrome
	Sleep, 150

	While (chrome != ahk_class Chrome_WidgetWin_1)
	{
		Sleep, 1000
		WinGetClass, chrome
		Sleep, 150
		WinGetActiveTitle, text
	}

	While (chrome == ahk_class Chrome_WidgetWin_1)
	{
		While (text == "Facebook - Google Chrome")
		{
			scrolldown()
			Sleep, 250
			WinGetActiveTitle, text		
		}
		Sleep, 1000
		WinGetClass, chrome
		Sleep, 250
		WinGetActiveTitle, text
	}
}

scrolldown(){
	Loop, 6 
	{
		Send, {WheelDown}
	 	Sleep, 50
	}
	Sleep, 1550
}

getclassandtitle(){
	WinGetClass, chrome
	WinGetActiveTitle, text
}