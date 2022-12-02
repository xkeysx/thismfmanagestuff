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

if %hour% EQU %m% (
    explorer
) else (
    start
    goto go
)
:go
start


