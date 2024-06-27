;----------------------------------------------------------------------------------------

; Here's how to use this script:
; F1 To toggle On/Off.
; F2 To change Key.
; F3 To show this menu.
; F4 For unlimited ammo.
; F5 To get wake up.
; F6 To get a new Daddy.
; F8 To perfectly parallel park every time.
; F9 To drink as much chocolate milk as you want and not want to throw up.
; F10 For 10x more FPS.

; Initialize variables
spamming := false
spam_key := ""
randomize := true

; Toggle spamming on/off with F1
F1::
    spamming := !spamming
    if (spamming == 0) {
        zeroToOnOff := "Off"
    }
    else{
        zeroToOnOff := "On"
    }
    ToolTip, Spamming is %zeroToOnOff%
    SetTimer, RemoveToolTip, -1000
    if (spamming)
    {
        SetTimer, SpamKey, 100
    }
    else
    {
        SetTimer, SpamKey, Off
    }
return

; Set the key to be spammed with F2
; Add method to capture space bar as input.
F2::
    InputBox, spam_key, Insert key to be spammed here.
    if (spam_key = "space" or spam_key = "Space" or spam_key = " ") {
        spam_key := "SC039"
    }
    ToolTip, Key changed to %spam_key%.
    SetTimer, RemoveToolTip, -1000
    spamming := false
return

; Function to spam the selected key
SpamKey:
    if (spamming) {
        if (randomize) {
            Random, rand_sleep, 100, 250
            Sleep, %rand_sleep%
        }
        SendInput, {%spam_key%}
    }
return

; Function to remove the tooltip after a short delay
RemoveToolTip:
    ToolTip
return