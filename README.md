## RESTORE WINBOX SESSIONS TO DEFAULT
Restore Winbox Sessions to Default  for Mikrotik with Batch File

![image](https://user-images.githubusercontent.com/42666125/111256937-c541ea80-864c-11eb-9b10-e4e33f758077.png)

<pre>
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
 </pre>

## <b>License</b><br>
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)
