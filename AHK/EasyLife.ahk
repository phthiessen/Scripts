; Autohotkey Script to make life easier
; Phil Thiessen
; March 3rd, 2020

; ^ > Ctrl
; ! > Alt
; + > Shift
; # > WinKey
; & > Custom Hotkey

#SingleInstance force

#J::
Run, "C:\Users\pthiessen\Downloads"
return

F1::
Run, "C:\Users\pthiessen\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
return

#+N::
Run, "C:\Program Files\Notepad++\notepad++.exe"
return

#^N::
Run, "C:\WINDOWS\system32\notepad.exe"
return

^+C::
Run, "C:\Windows\System32\calc.exe"
return
