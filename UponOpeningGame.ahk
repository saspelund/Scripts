

#+p::

;Sleep, 10*1000

Send, {LWin down}{Shift down}{u}
Sleep, 100

Send, {LWin up}{Shift up}

setworkingdir,C:\Program Files\BOINC\
Run, %comspec% /c .\boinccmd --set_run_mode never,,hide

MsgBox, Fn+q Auto mode!!

ExitApp