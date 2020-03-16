reg ADD HKLM\Software\Policies\Microsoft\Windows\OneDrive /v DisableFileSyncNGSC /t REG_DWORD /d 0x0 /f
start C:\Users\pthiessen\AppData\Local\Microsoft\OneDrive\OneDrive.exe
pause