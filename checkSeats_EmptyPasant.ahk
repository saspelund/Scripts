$#F2::
{
Sleep, 1000

MouseClick, L, 949, 552		; click on suggested password

Sleep, 1000

MouseClick, L, 949, 652		; click on login


;link for all shows to see if there are more for missing dates
;

tuesday1:=""

wednesday1:=""

thursday1:=""

friday1:=""

saturdayM1:=""

saturdayE1:=""

sundayM1:=""

sundayE1:=""

tuesday2:=""

wednesday2:=""

thursday2:=""

friday2:=""

saturdayM2:=""

saturdayE2:=""

sundayM2:=""

sundayE2:=""


arrayOfURLs:=[tuesday1,wednesday1,thursday1,friday1,saturdayM1,saturdayE1,sundayM1,sundayE1,tuesday2,wednesday2,thursday2,friday2,saturdayM2,saturdayE2,sundayM2,sundayE2]

Sleep, 3000
send,^t
Sleep, 1000



for k, v in arrayOfURLs
{
if !v
{
continue
}
clipboard=%v%


send,^v{enter}

Sleep, 500

send,^t

Sleep, 500

}

send,^w
Sleep, 1500

send, ^{PgDn}
Sleep, 1500

for k, v in arrayOfURLs
{
if !v
{
continue
}
send, ^{PgDn}

Sleep, 1000

MouseClick, L, 1236, 470	; click on the x

Sleep, 500

Send, {Blind}{PgDn}

Sleep, 100

Send, {Blind}{Up}{Up}{Up}

Sleep, 500

MouseClick, L, 955, 440		; click on the seating chart

Sleep, 500
}

}