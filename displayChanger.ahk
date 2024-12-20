
; SCRIPT TO SET RESOLUTION ON THE FLY
; REQUIRES NIRCMD AVAILABLE BELOW
; https://www.nirsoft.net/utils/nircmd.html
; https://www.nirsoft.net/utils/nircmd-x64.zip

; Set resolution to 2560x1440 @ 144Hz
^!F1:: ; Ctrl+Alt+F1 hotkey
    Run, DisplaySwitch.exe /extend
    Run, "C:\Program Files\nircmd\nircmd.exe" setdisplay 2560 1440 32 144
    MsgBox, Resolution set to 2560x1440 @ 144Hz
return


; Set resolution to 1920x1080 @ 120Hz
^!F2:: ; Ctrl+Alt+F2 hotkey
    Run, DisplaySwitch.exe /extend
    Run, "C:\Program Files\nircmd\nircmd.exe" setdisplay 1920 1080 32 120
    MsgBox, Resolution set to 1920x1080 @ 120Hz
return
