@echo on

set n=2
:loop
set filename=%1
set /a num=n-1

copy %filename%1.txt %filename%%n%.txt
echo.>> %filename%%n%.txt
type %filename%%num%.txt >> %filename%%n%.txt

set /a n+=1
if %n% leq 10 goto loop