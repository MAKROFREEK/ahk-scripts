toggle := false

F3::  ; Press F3 to toggle the script on and off
toggle := !toggle
if toggle
{
    SetTimer, AntiAFK, 100
}
else
{
    SetTimer, AntiAFK, Off
}
return

AntiAFK:
; Random delay between 1 minute and 5 minutes
; Time in milliseconds
Random, delay, 60000, 30000  


Random, key, 1, 4  ; Randomly choose a key (1 = w, 2 = a, 3 = s, 4 = d)

if (key = 1)
{
    SendInput, {w down}
    Sleep, 50
    SendInput, {w up}
}
else if (key = 2)
{
    SendInput, {a down}
    Sleep, 50
    SendInput, {a up}
}
else if (key = 3)
{
    SendInput, {s down}
    Sleep, 50
    SendInput, {s up}
}
else if (key = 4)
{
    SendInput, {d down}
    Sleep, 50
    SendInput, {d up}
}

Sleep, delay
return
