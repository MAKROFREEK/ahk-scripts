#NoEnv  ; Recommended for performance and compatibility.
; #Warn ; Enable warnings to assist with detecting common errors.

; Variable to track the toggle state
toggle := False

F1::
  toggle := !toggle  ; Invert the toggle state
  if (toggle)        ; If toggle is on
  {
    SetTimer, SpamOne, 10  ; Start space spamming timer (adjustable)
  }
  else                ; If toggle is off
  {
    SetTimer, SpamOne, Off ; Stop space spamming timer
  }
return

SpamOne:
  ; Simulate pressing and releasing space with a random delay
  ; Send, {1 down}
  ; Sleep, random, 230, 260  ; Random delay between 80 and 130 milliseconds
  ; Send, {1 up}
  Send 1
return