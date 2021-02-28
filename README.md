# Restore-Winbox-Sessions-to-Default
Restore Winbox Sessions to Default  for Mikrotik with Bacth File

<pre  style="font-family:arial;font-size:12px;border:1px dashed #CCCCCC;width:99%;height:auto;overflow:auto;background:#f0f0f0;;background-image:URL(http://2.bp.blogspot.com/_z5ltvMQPaa8/SjJXr_U2YBI/AAAAAAAAAAM/46OqEP32CJ8/s320/codebg.gif);padding:0px;color:#000000;text-align:left;line-height:20px;"><code style="color:#000000;word-wrap:normal;"> @echo OFF  
 TITLE Restore Winbox Sessions to Default  
 COLOR 1F   
 mode CON: cols=51 lines=30  
 echo.   
 echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ  
 echo Ý                        Ý  
 echo Ý Restore Winbox Sessions to Default      Ý  
 echo Ý By BuanaNET SECURE, Okt 2019         Ý  
 echo Ý fb.com/buananet.pangkalanbun         Ý  
 echo Ý                        Ý  
 echo ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß  
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
</code></pre>

<img style="float:right; padding-top:10px" src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fbuananetpbun.github.io%2F&count_bg=%23C83D3D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false" alt="Hits"/>
