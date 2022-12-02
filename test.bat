set date=%date:~0,2%
echo %date%


if %date% equ 2 (
    start
) else ( 
    notepad
) 

pause