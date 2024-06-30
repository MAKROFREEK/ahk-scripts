; More consistent than previous version
; Simply makes your character run around in a circle


toggle := false

F3::
    toggle := !toggle
    if (toggle) {
        SetTimer, PressKeys, 250
    } else {
        SetTimer, PressKeys, Off
    }
return

PressKeys:
    SendInput, {W down}
    Sleep, 250
    SendInput, {W up}
    Sleep, 250
    
    SendInput, {A down}
    Sleep, 250
    SendInput, {A up}
    Sleep, 250
    
    SendInput, {S down}
    Sleep, 250
    SendInput, {S up}
    Sleep, 250
    
    SendInput, {D down}
    Sleep, 250
    SendInput, {D up}
    Sleep, 250
return
