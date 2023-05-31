
Send, {LWin down}{Shift down}{u}
Sleep, 100
Send, {LWin up}{Shift up}

Sleep, 100

Send, {LWin down}{Shift down}{u}
Sleep, 100
Send, {LWin up}{Shift up}

MsgBox, 2x Fn+q Quiet mode!!`nThen close this

setworkingdir,C:\Program Files\BOINC\
Run, %comspec% /c .\boinccmd --set_run_mode auto,,hide

