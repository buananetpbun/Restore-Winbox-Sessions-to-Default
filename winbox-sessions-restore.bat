@echo OFF  
 TITLE Restore Winbox Sessions to Default  
 COLOR 1F   
 mode CON: cols=51 lines=30  
 echo.   
 echo =========================================
 echo = Restore Winbox Sessions to Default
 echo = By BuanaNET SECURE, Okt 2019
 echo = fb.com/buananet.pangkalanbun
 echo =========================================
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
