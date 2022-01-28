@ECHO OFF
  SETLOCAL ENABLEDELAYEDEXPANSION

  SET time_start=%time%
  SET time_choice_wait=20
  SET script_ver=1.00
  SET script_name=%~n0
  SET server_url=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/

  SET script_name_bat=%~dp0%script_name%.bat
  SET script_name_cfg=%~dp0%script_name%.conf
  SET script_name_latest_ver=%~dp0%script_name%.latest.ver

  ECHO %script_name% v%script_ver%
  ECHO %script_ver% > %script_name%.current.ver

  IF NOT EXIST "%script_name_cfg%" CALL :SCRIPT_MISSING_CFG
  FOR /f "delims=" %%x IN (%script_name%.conf) DO (SET "%%x")
  IF %__deploy_mode% EQU 1 GOTO :EOF
  IF %auto_update_compare% EQU 1 CALL :SCRIPT_COMPARE_VER




  :SCRIPT_MAIN
  REM =======================================
  REM ===       EDIT BELOW THIS LINE       ==

  REM TODO Add main content
  ECHO.
  ECHO Waiting for content...

  REM ===       EDIT ABOVE THIS LINE       ==
  REM =======================================
  GOTO END




  :SCRIPT_MISSING_CFG
  ECHO Criando arquivo %script_name%.conf ...
  ECHO __deploy_mode=0                   > "%script_name_cfg%"
  ECHO repository_base_url=%server_url% >> "%script_name_cfg%"
  ECHO auto_update_compare=1                >> "%script_name_cfg%"
  ECHO auto_update_download=1               >> "%script_name_cfg%"
  ECHO Update %script_name%.conf as needed, then save and close to continue.
  ECHO Waiting for notepad to close...
  NOTEPAD "%script_name_cfg%"
  GOTO :EOF




  :SCRIPT_COMPARE_VER
  ECHO Please wait while script versions are compared...
  Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server_url%%script_name%.current.ver', '%script_name_latest_ver%') }"
  IF NOT EXIST "%script_name_latest_ver%" GOTO END
  SET /p script_latest_ver= < "%script_name_latest_ver%"
  IF %script_ver% EQU %script_latest_ver% CALL :SCRIPT_COMPARE_VER_SAME
  IF %script_ver% NEQ %script_latest_ver% CALL :SCRIPT_COMPARE_VER_DIFF
  GOTO :EOF

  :SCRIPT_COMPARE_VER_SAME
  ECHO Versions are both %script_name% v%script_ver%
  GOTO :EOF

  :SCRIPT_COMPARE_VER_DIFF
  ECHO Current Version:%script_ver% ^| Server Version:%script_latest_ver%
  IF %auto_update_download% EQU 1 GOTO SCRIPT_DOWNLOAD_SCRIPT
  ECHO.
  ECHO Would you like to download the latest %script_name% v%script_latest_ver%?
  ECHO Defaulting to N in %time_choice_wait% seconds...
  CHOICE /C YN /T %time_choice_wait% /D N
  IF ERRORLEVEL 2 GOTO SCRIPT_DOWNLOAD_NOTHING
  IF ERRORLEVEL 1 GOTO SCRIPT_DOWNLOAD_SCRIPT
  IF ERRORLEVEL 0 GOTO SCRIPT_DOWNLOAD_NOTHING

  :SCRIPT_DOWNLOAD_SCRIPT
  ECHO Please wait while script downloads...
  Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server_url%%script_name%.bat', '%script_name_bat%') }"
  ECHO Script Updated to v%script_latest_ver%^^!
  REM User must exit script. Current batch is stale.
  GOTO :END

  :SCRIPT_DOWNLOAD_NOTHING
  GOTO :EOF



  :END
  SET time_end=%time%
  ECHO.
  ECHO Script started:%time_start%
  ECHO Script ended  :%time_end%
  :END_AGAIN
  pause
  ECHO.
  ECHO Please close this window
  ECHO.
  GOTO END_AGAIN