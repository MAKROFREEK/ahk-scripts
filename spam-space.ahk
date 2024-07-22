#NoEnv  ; Recommended for performance and compatibility.
; #Warn ; Enable warnings to assist with detecting common errors.

; Variable to track the toggle state
toggle := False

F1::
  toggle := !toggle  ; Invert the toggle state
  if (toggle)        ; If toggle is on
  {
    SetTimer, SpamSpace, 10  ; Start space spamming timer (adjustable)
  }
  else                ; If toggle is off
  {
    SetTimer, SpamSpace, Off ; Stop space spamming timer
  }
return

SpamSpace:
  ; Simulate pressing and releasing space with a random delay
  Send, {Space down}
  Sleep, random, 80, 130  ; Random delay between 80 and 130 milliseconds
  Send, {Space up}
return