; #SingleInstance, Force

; #IfWinActive ahk_class Progman

; !+Up::
;     NightLight_Adjust(25)
; return

; !+Down::
;     NightLight_Adjust(-25)
; return

; NightLight_Adjust(amount) {
;     RegRead, currentBrightness, HKEY_CURRENT_USER, SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\MicrosoftEdge\Browser\8C760306-F2E7-4FEB-A1A4-68F84937AE0F-647\DataModel, SystemUsesLightTheme
;     currentBrightness := currentBrightness ? currentBrightness : 100
;     newBrightness := currentBrightness + amount
;     newBrightness := newBrightness < 0 ? 0 : newBrightness > 100 ? 100 : newBrightness
;     RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\MicrosoftEdge\Browser\8C760306-F2E7-4FEB-A1A4-68F84937AE0F-647\DataModel, SystemUsesLightTheme, % newBrightness
;     SendMessage, 0x1330, 0x61A, 0x1,, A
; }
