keys := {}
keyPressTime := {}

Loop
{
    for key, value in keys
    {
        if (A_TickCount - keyPressTime[key]) > 1000
        {
            SetTimer, SpamKey, -100, %key%
        }
    }

    GetKeyState, state, 1, P
    if state = D
    {
        keys[1] := 1
        keyPressTime[1] := A_TickCount
    }

    GetKeyState, state, 2, P
    if state = D
    {
        keys[2] := 2
        keyPressTime[2] := A_TickCount
    }

    GetKeyState, state, 3, P
    if state = D
    {
        keys[3] := 3
        keyPressTime[3] := A_TickCount
    }

    GetKeyState, state, 4, P
    if state = D
    {
        keys[4] := 4
        keyPressTime[4] := A_TickCount
    }

    for key, value in keys
    {
        if !GetKeyState(key, "P")
        {
            keys.Remove(key)
            keyPressTime.Remove(key)
            SetTimer, SpamKey, Off, %key%
        }
    }
}

SpamKey:
    Send, %A_ThisHotkey%
return

