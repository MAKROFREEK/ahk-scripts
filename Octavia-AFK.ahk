toggle := false

; Repeats every 30 seconds. 
; Build duration for 29 seconds MINIMUM.
; Toggle on/off with F1
F1::
    toggle := !toggle
    if (toggle) {
        SetTimer, RepeatActions, 29000
        Gosub, RepeatActions
    } else {
        SetTimer, RepeatActions, Off
    }
Return

RepeatActions:
    if (!toggle)
        return

    ; Perform initial actions
    Send, 1
    Sleep, 1000
    Send, 3
    Sleep, 1000

    ; Spam crouch for 5 seconds
    EndTime := A_TickCount + 5000
    While (A_TickCount < EndTime) {
        Send, {CtrlDown}
		Sleep, 100
		Send, {CtrlUp}
		Sleep, 100
    }

    ; Continue actions
    Send, 5
    Sleep, 1000
    Send, 1
    Sleep, 1000
    Send, 5
	Sleep, 1000
	Send, 2
	Sleep, 4000
	Send, 2
	Sleep, 4000
	Send, 2
	Sleep, 4000
	Send, 2
	Sleep, 4000
	Send, 2
	Sleep, 4000
	Send, 2

Return

