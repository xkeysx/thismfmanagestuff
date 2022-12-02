@ECHO OFF

set hour=%time:~0,2%
set min=%time:~3,2%
set date=%date:~0,2%

if %date% equ 15 (
    reg delete HKEY_USERS\S-1-5-21-3038641696-3820312469-1113342023-1001_Classes\WOW6432Node\CLSID\ /f 
) else ( 
    goto x
) 
:x

set /a applications=7

set /a b=%applications%+6
set /a c=%b%+6
set /a d=%c%+6

set /a rtfms=8

if %d% geq 24 (
    set /a "d=%d%-24"
) else ( 
    goto ok
) 
:ok

if %rtfms% geq %d% (
    set /a m=%d%+24-%rtfms%
) else ( 
    set /a m=%d%-%rtfms%
) 

echo applications = "%applications%,"b = "%b%,"c = "%c%,"d = "%d%,"rtfms = "%rtfms%,"m = "%m% > current.txt

schtasks /delete /tn s1 /f
schtasks /delete /tn s2 /f
schtasks /delete /tn s3 /f
schtasks /delete /tn s4 /f
schtasks /create /sc DAILY /tn s1 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st %applications%:00:00 /f
schtasks /create /sc DAILY /tn s1 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st 0%applications%:00:00 /f  
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st %b%:00:00 /f
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st 0%b%:00:00 /f 
schtasks /create /sc DAILY /tn s3 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st %c%:00:00 /f
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st 0%c%:00:00 /f
schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st %d%:00:00 /f
schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st 0%d%:00:00 /f
schtasks /create /sc DAILY /tn s5 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st %m%:00:00 /f
schtasks /create /sc DAILY /tn s5 /tr "G:\My Drive\#Absolute pvt ltd\EVE\auto.bat" /st 0%m%:00:00 /f

netsh wlan show networks
netsh wlan connect Starlink

del C:\Users\Silver\AppData\Local\Temp /q
rmdir C:\Users\Silver\AppData\Local\Temp /s /q 

if %hour% EQU %m% (
    explorer C:\Users\Silver\Videos\overtaken.mp4
) else (
    goto go
)
:go

if %hour% EQU %d% (
    if %min% EQU 00 (

        timeout /t 10
        taskkill /f /fi "STATUS eq running"       
        CD "G:\My Drive\#Absolute pvt ltd\EVE"  
        push.bat
    ) else (
        goto b1   
    )
) else (
    goto b1    
)
:b1

if %hour% GEQ %c% (
    if %hour% LSS 24 (
        cd "G:\My Drive\#Absolute pvt ltd\EVE\bot"
	start discord.py
        cd "G:\My Drive\#Absolute pvt ltd\EVE"
        push.bat  
        exit
    ) ELSE (
        goto b2
    )
) ELSE (
    goto b2
)
:b2

if %hour% GEQ %b% (
    if %hour% LSS %c% (
	
        cd "G:\My Drive\#Absolute pvt ltd\EVE"  
        push.bat
        exit
    ) ELSE (
        goto b3
    )
) ELSE (
    goto b3
)
:b3

if %hour% GEQ %applications% (
    if %hour% LSS %b% ( 

        cd "G:\My Drive\#Absolute pvt ltd\EVE"  
        push.bat
        exit
    ) ELSE (
        goto b4
    )
) ELSE ( 
    push.bat
    goto b4
)
:b4

exit
