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
    ; Send, 1
    ; Sleep, 1000,1482
    Send, 3
    Sleep, 1000,1348

    ; Spam crouch for 5 seconds
    EndTime := A_TickCount + 1000
    While (A_TickCount < EndTime) {
        Send, {CtrlDown}
		Sleep, 75
		Send, {CtrlUp}
		Sleep, 75
    }

    ; Continue actions
    ; Send, 5
    ; Sleep, 1000,1392
    ; Send, 1
    ; Sleep, 1000,1421
    ; Send, 5
	; Sleep, 1000,1923
	; Send, 2
	; Sleep, 4000,4721
	; Send, 2
	; Sleep, 4000,4710
	; Send, 2
	; Sleep, 4000,4201
	; Send, 2
	; Sleep, 4000,4411
	; Send, 2
	; Sleep, 4000,4488
	; Send, 2

Return

