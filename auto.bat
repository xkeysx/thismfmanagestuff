@ECHO ON
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "BO darbi" /min "%~f0" %* && exit
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
    goto ok1
) 
:ok1
if %rtfms% geq %d% (
    set /a m=%d%+24-%rtfms%
) else ( 
    set /a m=%d%-%rtfms%
) 

schtasks /delete /tn s1 /f
schtasks /delete /tn s2 /f
schtasks /delete /tn s3 /f
schtasks /delete /tn s4 /f  
schtasks /create /sc DAILY /tn s1 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st %applications%:00:00 /f
schtasks /create /sc DAILY /tn s1 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st 0%applications%:00:00 /f
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st %b%:00:00 /f
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st 0%b%:00:00 /f
schtasks /create /sc DAILY /tn s3 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st %c%:00:00 /f
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st 0%c%:00:00 /f
schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st %d%:00:00 /f
schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st 0%d%:00:00 /f
schtasks /create /sc DAILY /tn s5 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st %m%:00:00 /f
schtasks /create /sc DAILY /tn s5 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st 0%m%:00:00 /f

netsh wlan show networks
netsh wlan connect Starlink

del C:\Users\pc14\AppData\Local\Temp /f /q
rmdir C:\Users\pc14\AppData\Local\Temp /s /q 
cd %cd%\discord\walls

goto ok2

:ok2

if %hour% EQU %d% (
    if %min% equ 00 (

        timeout /t 3
        taskkill /f /fi "STATUS eq running"       
        CD "G:\My Drive\#Absolute pvt ltd\EVE"
        push.bat
    ) else (
        goto ok3
    )
) else (
    goto ok3
)
:ok3
if %hour% EQU %m% (
    if %hour% LSS %d% ( 

        start firefox https://www.blogger.com/blog/posts/273122595862652461
        schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st 0%d%:00:00 /f 
        schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\discord\auto.bat" /st %d%:00:00 /f 
        CD "G:\My Drive\#Absolute pvt ltd\EVE"
        push.bat                           
    ) ELSE (
        goto ok4
    )
) ELSE (
    goto ok4
)

:ok4
if %hour% GEQ %c% (
    if %hour% LSS %d% (

        CD "G:\My Drive\#Absolute pvt ltd\EVE"
        exit
    ) ELSE (
        goto ok5
    )
) ELSE (
    goto ok5
)

:ok5
if %hour% GEQ %b% (
    if %hour% LSS %c% (

        CD "G:\My Drive\#Absolute pvt ltd\EVE"
        push.bat
        exit
    ) ELSE (
        goto ok6
    )
) ELSE (
    goto ok6
)

:ok6
if %hour% GEQ %applications% (
    if %hour% LSS %b% ( 

        CD "G:\My Drive\#Absolute pvt ltd\EVE"
        push.bat
        pause
        exit
    ) ELSE (
        goto done
    )
) ELSE ( 
    push.bat
    goto done
)
:done
exit
