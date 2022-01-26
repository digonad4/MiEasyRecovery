@echo off
mode 65,15
cls 
set linkA1=https://github.com/devrodrigopires/arcNoob/raw/main/TWRP-3.5.2.rar
::: Checking the existence of this menu file.
if exist "%cd%\adb\file\twrp\mojito\3.5.2\3.5.2.img" (
  echo The file is here.
) else (
  echo The file does not exist.
  echo.
  echo Press something to go to download.
  pause > nul
  goto Um
)
:INI
cls
echo.
echo -----------------------------------------------------------------
echo   Noob Master                              Device - Sunny Mojito 
echo -----------------------------------------------------------------
echo.
echo.
echo.
echo 1 ) Download and extract Twrp 3.5.2.rar 
echo.
echo.
echo.
echo.
set nb=
set /p "nb=Type something %UsERNAME% > "
if '%nb%' == '1' goto Um
goto INI
:Um 
cls 
::: Function that downloads and creates the folder responsible for storing the file within the script.
echo Downloading...
echo.
echo I'm creating the directories and downloading your file
echo Wait...
mkdir adb\file\twrp\mojito\3.5.2\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', 'adb\file\twrp\Mojito\3.5.2\3.5.2.rar') }"
cls 
echo DOWNLOADED.
echo.
echo.
echo Type something so I can extract the file for you...
echo.
echo.
pause > nul
echo Extracting file...
"C:\Program Files\WinRAR\WinRAR.exe" x -y -c "%cd%\adb\file\twrp\Mojito\3.5.2\3.5.2.rar" "%cd%\adb\file\twrp\Mojito\3.5.2"
echo.
echo.
echo Deleting 3.5.2.rar file 
echo.
del "%cd%\adb\file\twrp\Mojito\3.5.2\3.5.2.rar"
echo.
echo.
echo Press something to go back to the menu.
pause > nul
goto INI