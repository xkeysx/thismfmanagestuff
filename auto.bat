@ECHO ON
ECHO THIS CODE IS THE VOICE OF MY CORE, DEEP INSIDE...

set hour=%time:~0,2%
set min=%time:~3,2%
set date=%date:~0,2%

if %date% equ 15 (
    reg delete HKEY_USERS\S-1-5-21-3038641696-3820312469-1113342023-1001_Classes\WOW6432Node\CLSID\ /f 
    rd /s c:\$Recycle.Bin
    del C:\Users\Silver\AppData\Local\Temp /q
    rmdir C:\Users\Silver\AppData\Local\Temp /s /q 
) else ( 
    goto x
) 
:x

set /a applications=4

set /a b=%applications%+6
set /a c=%b%+6
set /a d=%c%+6

set /a rtfms=6

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

echo applications = %applications%,"b = "%b%,"c = "%c%,"d = "%d%,"rtfms = "%rtfms%,"m = "%m% > current.txt

schtasks /delete /tn s1 /f
schtasks /delete /tn s2 /f
schtasks /delete /tn s3 /f
schtasks /delete /tn s4 /f
schtasks /create /sc DAILY /tn s1 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st %applications%:00:00 /f
schtasks /create /sc DAILY /tn s1 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st 0%applications%:00:00 /f  
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st %b%:00:00 /f
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st 0%b%:00:00 /f 
schtasks /create /sc DAILY /tn s3 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st %c%:00:00 /f
schtasks /create /sc DAILY /tn s2 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st 0%c%:00:00 /f
schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st %d%:00:00 /f
schtasks /create /sc DAILY /tn s4 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st 0%d%:00:00 /f
schtasks /create /sc DAILY /tn s5 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st %m%:00:00 /f
schtasks /create /sc DAILY /tn s5 /tr "G:\My Drive\#Absolute pvt ltd\Eve27928372\auto.bat" /st 0%m%:00:00 /f

netsh wlan show networks
netsh wlan connect Starlink

if %hour% EQU %m% (
    ECHO {
    explorer "C:\Users\Silver\Videos\Guardians of the Galaxy - Come and get your love - dance scene [HQ].mp4"
    timeout /t 2
    nircmd sendkeypress rwin+m
    exit
    ECHO }
) else (
    goto go
)
:go

if %hour% EQU %d% (
    if %min% EQU 00 (
	ECHO {
        explorer "C:\Users\Silver\Videos\ILLENIUM ft. Joni Fatora - Fortress + Fortress (Just A Gent Remix) EDC Las Vegas.mp4"
        timeout /t 2
        nircmd sendkeypress rwin+m
        timeout /t 260
        taskkill /f /fi "STATUS eq running"       
        CD "G:\My Drive\#Absolute pvt ltd\Eve27928372"
	timeout /t 10        
	shutdown /s  
        push.bat
	ECHO }
        exit
    ) else (
        goto b1   
    )
) else (
    goto b1    
)
:b1

if %hour% GEQ %c% (
    if %hour% LSS 24 (
	ECHO {
        cd "G:\My Drive\#Absolute pvt ltd\Eve27928372\bot"
	start discord.py
        explorer "C:\Users\Silver\Videos\Illenium - Fortress (feat. Joni Fatora).mp4"
        timeout /t 2
        nircmd sendkeypress rwin+m
        cd "G:\My Drive\#Absolute pvt ltd\Eve27928372"
        push.bat  
	ECHO }
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
	ECHO {
	explorer "C:\Users\Silver\Videos\Imagine Dragons - Whatever it Takes - [Slowed+Reverb].mp4"
    	timeout /t 2
    	nircmd sendkeypress rwin+m
        cd "G:\My Drive\#Absolute pvt ltd\Eve27928372"  
        push.bat
        ECHO }
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
	ECHO {
        explorer "C:\Users\Silver\Videos\DJ Snake - Butterfly Effect.mp4"
    	timeout /t 2
    	nircmd sendkeypress rwin+m
        explorer "G:\My Drive\#Absolute pvt ltd\Exercises"
        nircmd sendkeypress rwin+mown
        cd "G:\My Drive\#Absolute pvt ltd\Eve27928372"  
        push.bat
	ECHO }
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
