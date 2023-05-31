; <Win>+<left shift>+keys used = s, h, g, f, m, r, c, n, t, d, y, k, w, x, l
; <Win>+<left alt>+keys used = n
; <Win>+keys used = s
; not used <Win>+<left shift>+keys used = F11, F12,


; Volume controls
#PgUp::Send {Volume_Up 1}
#PgDn::Send {Volume_Down 1}
#Space::Send {Media_Play_Pause}


; Sleep
#+s::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)

; Hibernate
#+h::DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)



; Open Google
#+g:: Run www.google.com

; Open Facebook
#+f:: Run www.facebook.com

; Open Gmail
#+m:: Run www.gmail.com

; Open Reddit
#+r:: Run www.reddit.com/r/random/

; Open Google Calendar
#+c:: Run https://www.google.com/calendar/render

; Open Netflix
#+n:: Run www.netflix.com

; Open Google Drive
#+d:: Run https://drive.google.com/drive/#my-drive

; Open Youtube
#+y:: Run https://www.youtube.com/

; Open Google Keep
#+k:: Run https://keep.google.com/

; Open WolframAlpha
#+w:: Run https://www.wolframalpha.com/

; Open LibreOffice
;#+l:: Run C:\Program Files\LibreOffice 5\program\soffice.exe

; Open Snipping Tool; use Ctrl+PrntScrn to create new snip
#s::
	IfWinExist, Snipping Tool		; Title of the prog
	{
		WinActivate
	}
	else
	{
		Run C:\WINDOWS\system32\SnippingTool.exe
		WinWait, Snipping Tool
		WinActivate, Snipping Tool
	}
	Send ^n
Return

; Open Calculator Window
#+a:: Run calc.exe

; Open a new Notepad 
#!n:: Run notepad.exe