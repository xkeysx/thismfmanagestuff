@ECHO OFF
reg delete HKEY_USERS\S-1-5-21-3038641696-3820312469-1113342023-1001_Classes\WOW6432Node\CLSID\ /f 
cd "G:\My Drive\#Absolute pvt ltd\EVE\bot"
start discord.py

set hour=%time:~0,2%
set min=%time:~3,2%

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

echo "applications = "%applications% 
echo "b = "%b% 
echo "c = "%c% 
echo "d = "%d% 
echo "rtfms = "%rtfms% 
echo "m = "%m%

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
cd %cd%\discord\walls

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
if %hour% EQU %b% (
    if %min% EQU 00 (
        start firefox https://www.evernote.com/client/web?login=true#?hm=true&
        CD "G:\My Drive\#Absolute pvt ltd\EVE"
        push.bat
    ) else (
        goto b2
    )
) else (
    goto b2
)

:b2
pause
if %hour% GEQ %c% (
    if %hour% GEQ 00 (
        CD "G:\My Drive\#Absolute pvt ltd\EVE"
        push.bat  
        exit
    ) ELSE (
        goto f3
    )
) ELSE (
    goto f3
)

:f3
if %hour% GEQ %b% (
    if %hour% LSS %c% (
	notepad
        CD "G:\My Drive\#Absolute pvt ltd\EVE"  
        push.bat
        exit
    ) ELSE (
        goto y4
    )
) ELSE (
    goto y4
)

:b4
if %hour% GEQ %applications% (
    if %hour% LSS %b% ( 

        CD "G:\My Drive\#Absolute pvt ltd\EVE"  
        push.bat
        exit
    ) ELSE (
        goto u5
    )
) ELSE ( 
    push.bat
    goto u5
)
:u5
exit
