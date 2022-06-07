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


TradeCryptarch()
{
	Send {e down}
	sleep 1345
	send {e up}
	Loop
	{
		if (A_Index>10)
			break
		ImageSearch,x,y, 1020, 0, 1920, 1080, *20 decryptEngrams.png
		if !ErrorLevel
		{
			send {esc down}
			send {esc up}
			sleep 1500
			break
		}
		else if ErrorLevel
		{
			sleep 200
			continue
		}
	}
	loop, 24
	{
		Random, xMaterial1, 1360, 1380
		xMaterial2:=xMaterial1+100
		xMaterial3:=xMaterial2+100
		xMaterial4:=xMaterial3+100
		xGlimmer2:=xMaterial1-100
		xGlimmer1:=xGlimmer2-100

		Random, xMove, 1050, 1090
		Random, yMove, 20, 55
		Random, yTrade, 170, 180
		Random, sBuyGlimmer, 250, 300
		loop
		{
			if (A_Index>5)
			{
				loop
				{
					if (A_Index>5)
						return
					ImageSearch,x,y, 1020, 0, 1920, 1080, *30 buyGlimmer2.png
					if !ErrorLevel
					{
						Mousemove, x, y, 0
						Click, down
						sleep sBuyGlimmer
						click, up
						sleep 100
						break
					}
					else if ErrorLevel
					{
						sleep 100
						continue
					}
				}
				break
			}
			ImageSearch,x,y, 1020, 0, 1920, 1080, *30 buyGlimmer.png
			if !ErrorLevel
			{
				Mousemove, x, y, 0
				Click, down
				sleep sBuyGlimmer
				click, up
				sleep 100
				break
			}
			else if ErrorLevel
			{
				sleep 100
				continue
			}

		}
		Mousemove, xMove, yMove, 0
	}

return
}
DismantleItem()
{
	Send {]}
	sleep 500
	Random, xHelmet, 1405, 1415
	Random, yHelmet, 270, 280
	Random, x1, 1490, 1505
	Random, y1, 260, 270
	Mousemove, xHelmet, yHelmet, 0
	sleep 1000
	Mousemove, x1, y1, 0
	Loop, 10
	{
		Random, sReclaim, 1400, 1425
		if (A_Index=1)
			Mousemove, x1, y1, 0
		sleep 250
		send {f down}
		sleep sReclaim
		send {f up}
	}
	return
}

F7::
ImageSearch, x, y, 0, 0, 1920, 1080, *30 d2Icon.png
if !ErrorLevel
{
	Mousemove, x, y, 0
	Click
	sleep 2000
}
Loop
{
	Loop, 40
	{
	Send {[}
		Loop
		{
			if (A_Index>10)
				MsgBox, Error
			ImageSearch,x,y, 200, 200, 1720, 820, *30 armorTab.png
			if !ErrorLevel
			{
				Mousemove, x, y, 0
				Click
				break
			}
			else if ErrorLevel
			{
				sleep 200
				continue
			}
		}
		Loop
		{
			if (A_Index>10)
				MsgBox, Error
			ImageSearch,x,y, 0, 0, 1720, 1080, *30 levelingTab.png
			if !ErrorLevel
			{
				Mousemove, x, y, 0
				Click
				sleep 500
				break
			}
			else if ErrorLevel
			{
				sleep 200
				continue
			}
		}
		Loop
		{
			if (A_Index>10)
				MsgBox, Error
			ImageSearch,x,y, 0, 0, 1920, 1080, *20 nextPage.png
			if !ErrorLevel
			{
				Mousemove, x, y, 0
				Click
				sleep 500
				break
			}
			else if ErrorLevel
			{
				sleep 200
				continue
			}
		}
		Loop
		{
			if (A_Index>10)
				MsgBox, Error
			ImageSearch,x,y, 0, 0, 1720, 1080, *50 gumshoeHelmet.png
			if !ErrorLevel
				break
			else if ErrorLevel
			{
				sleep 200
				continue
			}
		}
		Loop, 9
		{
			Random, xReclaim, 715, 730
			Random, yReclaim, 870, 880
			Random, sReclaim, 3200, 3211
			Mousemove, xReclaim, yReclaim, 0
			click, down
			sleep sReclaim
			click, up
		}
		DismantleItem()
	}
	send {esc}
	sleep 1000
	TradeCryptarch()
}

f8::reload
f9::ExitApp
