@echo OFF
TITLE Restore Winbox Sessions to Default
COLOR 1F  
mode CON: cols=51 lines=30
echo.  
echo  ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo  Ý                                               Ý
echo  Ý Restore Winbox Sessions to Default            Ý
echo  Ý By BuanaNET SECURE, Okt 2019                  Ý
echo  Ý fb.com/buananet.pbun                          Ý
echo  Ý                                               Ý
echo  ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo.  
:choice
set /P c=Restore Winbox Session[Y/N]?
if /I "%c%" EQU "Y" goto :winbox-yes
if /I "%c%" EQU "N" goto :winbox-no
goto :choice
:winbox-yes
echo.
echo Close Winbox.exe Proccess..
echo -------------------------------------------------
taskkill /f /im winbox.exe
echo -------------------------------------------------
echo.
echo Remove all sessions winbox at file *.viw
echo -------------------------------------------------
echo Location: c:\Users\%USERNAME%\AppData\Roaming\Mikrotik\Winbox\sessions\
DEL "c:\Users\%USERNAME%\AppData\Roaming\Mikrotik\Winbox\sessions\*.viw"
echo -------------------------------------------------
echo. 
echo ***** Process Complete! *****
echo. 
pause 
exit
:winbox-no
exit
