@ECHO ON
cd "G:\My Drive\#Absolute pvt ltd\Eve27928372"

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

set /a applications=7

set /a b=%applications%+6
set /a c=%b%+7
set /a d=%c%+5

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

echo applications = %applications%,"b = "%b%,"c = "%c%,"d = "%d%,"rtfms = "%rtfms%,"m = "%m% > current.txt

schtasks /delete /tn s1 /f
schtasks /delete /tn s2 /f
schtasks /delete /tn s3 /f
schtasks /delete /tn s4 /f
schtasks /delete /tn s5 /f

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
    nircmd setdefaultsounddevice "Speakers"
    explorer "C:\Users\Silver\Videos\Guardians of the Galaxy - Come and get your love - dance scene [HQ].mp4"
    timeout /t 3
    nircmd sendkeypress rwin+m
    timeout /t 3
    exit
    ECHO }
) else (
    goto go
)
:go

if %hour% EQU %d% (
    if %min% EQU 00 (
	ECHO {
        nircmd setdefaultsounddevice "Speakers"
        explorer "C:\Users\Silver\Music\Interstellar Main Theme Extra Extended Soundtrack By Hans Zimmer - Free Download, Borrow, and Streaming - Internet Archive.mp3"
        timeout /t 3
        nircmd sendkeypress rwin+m
        timeout /t 360
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
        nircmd setdefaultsounddevice "Speakers"
        timeout /t 3
        explorer "C:\Users\Silver\Videos\Megamind - Making an Entrance - Fandango Family_Trim.mp4"
        timeout /t 3
        nircmd sendkeypress rwin+m
    	timeout /t 3
        explorer C:\Users\Silver\AppData\Local\Discord\app-1.0.9007\Discord.exe 
    	timeout /t 3
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
        nircmd setdefaultsounddevice "Speakers"
	explorer "C:\Users\Silver\Videos\Timecop1983 - On the Run.mp4"
    	timeout /t 3
    	nircmd sendkeypress rwin+m
    	timeout /t 3
        start firefox https://www.evernote.com/client/web?login=true
    	timeout /t 3
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
        nircmd setdefaultsounddevice "Speakers"
        explorer "C:\Users\Silver\Videos\DJ Snake - Butterfly Effect.mp4"
    	timeout /t 3
    	nircmd sendkeypress rwin+m
    	timeout /t 3
        start firefox https://leetcode.com/problemset/all/
    	timeout /t 3
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
