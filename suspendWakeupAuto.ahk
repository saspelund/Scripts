/*
Adapted from https://autohotkey.com/board/topic/19984-running-commands-on-standby-hibernation-and-resume-events/
*/

; Listen to the Windows power event "WM_POWERBROADCAST" (ID: 0x218):
OnMessage(0x218, "func_WM_POWERBROADCAST")
Return

/*
	This function is executed if the system sends a power event.
	Parameters wParam and lParam define the type of event:
	
	lParam: always 0
	wParam:
		PBT_APMQUERYSUSPEND             0x0000
		PBT_APMQUERYSTANDBY             0x0001
		
		PBT_APMQUERYSUSPENDFAILED       0x0002
		PBT_APMQUERYSTANDBYFAILED       0x0003
		
		PBT_APMSUSPEND                  0x0004
		PBT_APMSTANDBY                  0x0005
		
		PBT_APMRESUMECRITICAL           0x0006
		PBT_APMRESUMESUSPEND            0x0007
		PBT_APMRESUMESTANDBY            0x0008
		
		PBTF_APMRESUMEFROMFAILURE       0x00000001
		
		PBT_APMBATTERYLOW               0x0009
		PBT_APMPOWERSTATUSCHANGE        0x000A
		
		PBT_APMOEMEVENT                 0x000B
		PBT_APMRESUMEAUTOMATIC          0x0012
		
		Source: http://weblogs.asp.net/ralfw/archive/2003/09/09/26908.aspx
*/
func_WM_POWERBROADCAST(wParam, lParam)
{
	Global reg_root, reg_path, reg_key
	
	If (lParam = 0)
	{
		; PBT_APMRESUMESUSPEND oder PBT_APMRESUMESTANDBY? -> System wakes up
		If (wParam = 7 OR wParam = 8)
		{
			Run powerPlanSwitcher2.ahk
		}
	}
	Return
}