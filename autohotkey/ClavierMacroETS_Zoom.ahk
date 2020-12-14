#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Touche	Code envoyé (reçu par AutoHotKey)
; 1	CTRL+SHIFT+F13
^+F13::
ActivateZoom()
ToggleZoomAudio()
return

; 2	CTRL+SHIFT+F2
^+F2::
ActivateZoom()
ToggleZoomVideo()
return

; 3	CTRL+SHIFT+F3
^+F3::
ActivateZoom()
ToggleZoomAudioEveryoneButHost()
return

; 4	CTRL+SHIFT+F4
^+F4::
;Send, Touche 4
return

; 5	CTRL+SHIFT+F5
^+F5::
;Send, Touche 5
return

; 6	CTRL+SHIFT+F6
^+F6::
;Send, Touche 6
return

; 7	CTRL+SHIFT+F7
^+F7::
;Send, Touche 7
return

; 8	CTRL+SHIFT+F8
^+F8::
;Send, Touche 8
return

; 9	CTRL+SHIFT+F9
^+F9::
;Send, Touche 9
return

; Encodeur (sens horaire)	CTRL+SHIFT+F10
^+F10::
;Send, Encodeur (sens horaire)
return

; Encodeur (sens anti-horaire)	CTRL+SHIFT+F11
^+F11::
;Send, Encodeur (sens anti-horaire)
return

; Encodeur (bouton)	CTRL+SHIFT+F12
^+F12::
;Send, Encodeur (bouton)
return

; Fonctions pour faciliter la réutilisation
ActivateZoom()
{
    ; Hypothèse : nom de la fenêtre "Zoom Meeting"
    WinActivate, Zoom Meeting
    WinWaitActive, Zoom Meeting
    ; sinon, méthode moins précis
    ;Send {Ctrl Down}{Shift Down}{Alt Down}{Ctrl Up}{Shift Up}{Alt Up}
    ;Sleep 100
}

ToggleZoomAudio()
{
    ; Alt-A
    Send !a
}

ToggleZoomVideo()
{
    ; Alt-V
    Send !v
}

ToggleZoomAudioEveryoneButHost()
{
    ; Alt-M
    Send !m
}