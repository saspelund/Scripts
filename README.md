# Scripts
Little Codes I Use to Improve My Computer Life

# AutoHotKey scripts

powerPlanSwitcher2.ahk: Makes it so that Win+Shift+u cycles between Power Saver, Balanced, and Performance power settings. Has a tooltip that tells the current mode. Upon launching, this sets the system to Power Saver Mode

suspendWakeupAuto.ahk: Launches "powerPlanSwitcher2.ahk" upon the system waking up from sleep/hibernation/shutdown/restart.

Hotkeys.ahk: Just a bunch of hotkeys that I found useful to make


# Playnite automation

NoWeekdayGamesScriptPowerShellPlaynite.txt: Block games from launching from Playnite during weekday business hours. Paste the code in the "Execute before starting a game" box in Settings>Scripts. For each game, make sure to check the Run Global Scripts box.

UponOpeningGame.ahk: Waits for the user to press Win+Shift+p at which point it pauses BOINC jobs and sets the system to the next power setting (I typically run Power Saver so it bumps it to Balanced) and prompts user to hit the laptop hardware power setting mode to Auto (rather than Quiet). 
Paste the following in the "Execute after a game is started" box in Settings>Scripts: Start-Process "C:\Users\restOfPathTo\UponOpeningGame.ahk" but using your own file location (no quotation marks). For each game, make sure to check the Run Global Scripts box.

UponClosingGame.ahk upon the game closing out, sets the system to the Power Saver power setting and then prompts the user to hit the laptop hardware power setting mode to Quiet (rather than Auto). When the user has closed the message box, it restarts BOINC. 
Place the following in the "Execute after exiting a game" box in Settings>Scripts: Start-Process "C:\Users\restOfPathTo\UponClosingGame.ahk" but using your own file location (no quotation marks). For each game, make sure to check the Run Global Scripts box.

# Wharton Center Seat Checker

checkSeats_EmptyCobb.ahk and checkSeats_EmptyPasant.ahk: Templates that need to be filled out as appropriate for checking which seats are available at the Cobb or Pasant theaters so you can leave your tickets in will-call and then just call to have them moved.
