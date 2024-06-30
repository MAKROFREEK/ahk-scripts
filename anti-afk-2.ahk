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
    
    SendInput, {A down}
    Sleep, 250
    SendInput, {A up}
    
    SendInput, {S down}
    Sleep, 250
    SendInput, {S up}
    
    SendInput, {D down}
    Sleep, 250
    SendInput, {D up}
return
