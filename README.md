# Restore-Winbox-Sessions-to-Default
Restore Winbox Sessions to Default  for Mikrotik with Bacth File

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

<img style="float:right; padding-top:10px" src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fbuananetpbun.github.io%2F&count_bg=%23C83D3D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false" alt="Hits"/>
