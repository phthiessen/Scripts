; Autohotkey Script to make life easier
; Phil Thiessen
; Created: 2020-03-16
; Updated: 2023-08-03

; ^ > Ctrl
; ! > Alt
; + > Shift
; # > WinKey
; & > Custom Hotkey

; Replacements

^+d::
Send, °{Left}{Backspace}{Right}
return

^+-::
Send, ±{Left}{Backspace}{Right}
return

:C?*:pth::pthiessen
:C?*:phth::phthiessen

::teh::the
::hte::the

^j::
Run "C:\Users\Phil\Downloads"
return
