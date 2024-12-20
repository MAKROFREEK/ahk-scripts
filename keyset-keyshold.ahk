; Initialize variables
spamming := false
spam_key := ""
randomize := true

; Toggle spamming on/off with F1
F1::
    spamming := !spamming
    zeroToOnOff := spamming ? "On" : "Off"
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
F2::
    InputBox, spam_key, Insert key to be spammed here., , , 200, 150
    ToolTip, Key changed to %spam_key%.
    SetTimer, RemoveToolTip, -1000
    spamming := false
return

; Function to hold the selected key
SpamKey:
    if (spamming) {
        SendInput, {%spam_key% down}
    }
return

; Function to remove the tooltip after a short delay
RemoveToolTip:
    ToolTip
return
