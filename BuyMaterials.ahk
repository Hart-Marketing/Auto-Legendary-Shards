#SingleInstance Force
#WinActivateForce
#NoEnv
DetectHiddenText, On
DetectHiddenWindows, On
SetTitleMatchMode, 2
SetKeyDelay, 50
SetMouseDelay, 150
SetWinDelay, 100
SetWorkingDir, %A_ScriptDir%
OnExit, ExitHandler

BuyMaterials(CurrentMaterial, TimesToLoop)
{
	loop, %TimesToLoop%
	{
		Random, xBuyMaterial, 250, 350
		Random, xMaterial1, 1360, 1380
		xCurrent:=xMaterial1+100*(CurrentMaterial-1)
		Random, yCurrent, 170, 180
		Mousemove, xCurrent, yCurrent, 0
		Click
		sleep xBuyMaterial
	}
	return
}

InputBox, materialChoice, Buy Materials, Which material? `(Enter 1`-4 or enter 0 for none`)
if (materialChoice=0)
	exit
n:=materialChoice
InputBox, numberToBuy, Buy Materials, How many times do you want to buy this material?
iterations:=numberToBuy
if (numberToBuy=0)
	exit
ImageSearch, x, y, 0, 0, 1920, 1080, *30 d2Icon.png
if !ErrorLevel
{
	Mousemove, x, y, 0
	Click
	sleep 2000
}
BuyMaterials(n, iterations)
Exit

ExitHandler:
Run, AutoLegendaryShards.ahk
sleep 150
send {F7}
exitapp
