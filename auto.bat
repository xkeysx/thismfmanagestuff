@ECHO ON
cd "G:\My Drive\#Absolute pvt ltd\Eve27928372"

set hour=%time:~0,2%
set min=%time:~3,2%
set date=%date:~0,2%

if %date% equ 18 (
    reg delete HKEY_USERS\S-1-5-21-3038641696-3820312469-1113342023-1001_Classes\WOW6432Node\CLSID\ /f 
    rd /s c:\$Recycle.Bin /f
    del C:\Users\s7887\AppData\Local\Temp /q
    rmdir C:\Users\s7887\AppData\Local\Temp /s /q 
) else ( 
    goto x
) 
:x

schtasks /create /sc DAILY /tn MID /tr "C:\Users\s7887\OneDrive\Desktop\Eve27928372" /st 0%m%:00:00 /f
schtasks /create /sc DAILY /tn MID /tr "C:\Users\s7887\OneDrive\Desktop\Eve27928372" /st %m%:00:00 /f

netsh wlan show networks
netsh wlan connect Starlink

if %hour% EQU 0 (
    explorer 
) else (
    goto go
)
:go

