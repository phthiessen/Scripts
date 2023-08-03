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

::pmail::phthiessen@gmail.com
::pph::903.423.7256

^d::
Send, °{Left}{Backspace}{Right}
return

^+-::
Send, ±{Left}{Backspace}{Right}
return

:C?*:pth::pthiessen
:C?*:phth::phthiessen

::teh::the

^j::
Run "C:\Users\Phil\Downloads"
return
