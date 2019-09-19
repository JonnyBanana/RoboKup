@ECHO OFF
mode con:cols=60 lines=45
REM Robokup an automated backup script for Windows.
REM Compatibility: all Windows version: 98 to 10, and over.
REm Robokup make an automatic backup of these folders:
REM Images, videos, documents, desktop, downloads,
REM music, IE Favorites, Mozilla profile, Chrome profile,
REm Filezilla Profile,  Windows search, Notepad++ profile.
REM The script it recognizes the windows version by itself, 
REM and searches for folders in the appropriate destinations.
REM Just put this bat file in an external drive and make a double click.
REM by JonnyBAnana 
REM https://github.com/JonnyBanana
REM http://www.youtube.com/c/HowToHackItalia
REM howtohackitalia@gmail.com
color 0E
echo.
::: ______ ___________  _____ _   ___   _______ 
::: | ___ \  _  | ___ \|  _  | | / / | | | ___ \
::: | |_/ / | | | |_/ /| | | | |/ /| | | | |_/ /
::: |    /| | | | ___ \| | | |    \| | | |  __/ 
::: | |\ \\ \_/ / |_/ /\ \_/ / |\  \ |_| | |    
::: \_| \_|\___/\____/  \___/\_| \_/\___/\_|    
:::                       coded by JonnyBanana
echo
:::                                         |
:::                                         |
:::                                         |
:::                                         |
:::   _______                   ________    |
:::  |ooooooo|      ____       | __  __ |   |
:::  |[]+++[]|     [____]      |/  \/  \|   |
:::  |+ ___ +|     ]()()[      |\__/\__/|   |
:::  |:|   |:|   ___\__/___    |[][][][]|   |
:::  |:|___|:|  |__|    |__|   |++++++++|   |
:::_ ||||||||| _ | | __ | | __ ||______|| __|
:::  |_______|   |_|[::]|_|    |________|    \
:::              \_|_||_|_/                   \
:::                |_||_|                      \
:::               _|_||_|_                      \
:::              |___||___|                      \
:::     
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo.                  
REM this string is 4 ascii art dos injection 
ECHO PRESS ENTER TO START A ROBOBACKUP!
echo.
pause
REM if this directory exist the system must be Vista or later, because 
REM the startup folder is in differnt positions on xp or on Vista or later.
IF EXIST "%AppData%\Microsoft\Windows\Start Menu\Programs\startup\" (
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Documents" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Documenti"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Desktop" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Desktop"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Downloads" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Downloads"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Pictures" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Immagini"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Music" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Musica"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Videos" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Video"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Contacts" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Contatti"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Searches" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Ricerche"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Favorites" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Preferiti"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Roaming\Mozilla\Firefox" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Firefox"
	xcopy /c /d /e /h /i /r /y "%LOCALAPPDATA%\Google\Chrome\User Data" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Chrome"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Thunderbird\Profiles" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\ThunderBird"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Local\Microsoft\Outlook" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Outlook_2007_2010"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Documents\Outlook File" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Outlook_2013_2016"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\FileZilla" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\FileZilla"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Notepad++" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Notepad++"
	goto YOWIN
) 
REM else the system must be Xp or earlier
ELSE (
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Documents" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Documenti"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Desktop" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Desktop"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Downloads" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Downloads"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Pictures" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Immagini"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Music" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Musica"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Videos" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Video"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Contacts" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Contatti"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Searches" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Ricerche"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Preferiti" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Preferiti"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Mozilla\Firefox" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Firefox"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Impostazioni locali\Dati applicazioni\Google\Chrome\User Data" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Chrome"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Thunderbird\Profiles" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\ThunderBird"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Local\Microsoft\Outlook" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Outlook_2007_2010"
	xcopy /c /d /e /h /i /r /y "%USERPROFILE%\Documenti\Outlook File" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Outlook_2013_2016"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\FileZilla" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\FileZilla"
	xcopy /c /d /e /h /i /r /y "%APPDATA%\Notepad++" "BACKUP_%COMPUTERNAME%_%date:/=-%\%USERNAME%\Notepad++"
	goto YOWIN
)
:YOWIN
echo.
echo Robo_Backup Complete Dude!!!
echo.
start "C:\ProgramFiles(x86)\InternetExplorer\iexplore.exe" https://claudiochiaramonte.files.wordpress.com/2017/12/10001.gif?w=680&h=453m
echo.
pause
exit
