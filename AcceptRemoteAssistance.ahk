;AHK Script for VMs only / Windows 7 / M.Everett 2018
#Persistent
#SingleInstance force
DetectHiddenWindows, On
If WinExist("security")
Run, "C:\Program Files (x86)\Remote Assistance\startup.txt"
else

If WinExist("Windows Remote Assistance")
    WinActivate ; use the window found above
else
    WinActivate, PenServer


SetTimer, CheckActiveWindow, 500
SetTimer, CheckERRORWindow, 51000

CheckActiveWindow:

if WinActive("Windows Remote Assistance","What are the privacy and security concerns","Being helped by"){
	WinGetActiveStats, Title, xDim, yDim, xPos, yPos
	if (yPos = 221){
		ControlGetText, ControlText, Button1, Windows Remote Assistance
			ControlClick, Yes, Windows Remote Assistance
		}
	if (yDPos = 181){
		ControlGetText, ControlText, Button1, Windows Remote Assistance
			if (ControlText = "Yes"){
				Click, 22, 117
				sleep 500
			ControlClick, Yes, Windows Remote Assistance
		}
	}
}
return

CheckERRORWindow:
SetTitleMatchMode, 1 ; match start of the title
If WinExist("Security")

{

		Process, Close, CHATWINDOW.EXE		
		
		
	}


return