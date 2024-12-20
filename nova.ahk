f1:: ; toggle on/off
    SetTimer, Press4, % (A_PriorHotkey = "F1") ? 10000 : Off
return

Press4:
    Send {4}
    SetTimer, Press4, 10000
return