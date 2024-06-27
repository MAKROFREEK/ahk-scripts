; Initialize variables
spamming := false
spam_key := ""
randomize := true

; Toggle spamming on/off with F1
F1::
    spamming := !spamming
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
    InputBox, spam_key, Insert key to be spammed here.
    if (spam_key = "space" or spam_key = "Space" or spam_key = " ")
        spam_key := "SC039"
    spamming := false
return

; Function to spam the selected key
SpamKey:
    if (spamming)
    {
        if (randomize)
        {
            Random, rand_sleep, 100, 250
            Sleep, %rand_sleep%
        }
        SendInput, {%spam_key%}
    }
return



