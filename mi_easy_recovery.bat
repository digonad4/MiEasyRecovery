@echo off
color 03
mode 72,15

pushd "%~dp0"
set "adb_dir=%cd%\adb"
set "adb=%adb_dir%\adb.exe"
set "fastboot=%adb_dir%\fastboot.exe"
set "repo_url=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main"
set "config_url=%repo_url%/devices.json"
set "script_url=%repo_url%/mi_easy_recovery.bat"
set "local_script=%~f0"
set "temp_script=%temp%\mi_easy_recovery_new.bat"
set "config_file=%cd%\devices.json"

cls

:CheckUpdate
title Verificando atualizações - Mi Easy Recovery
echo Verificando atualizações...
powershell -command "(New-Object Net.WebClient).DownloadFile('%script_url%', '%temp_script%')"
fc "%local_script%" "%temp_script%" >nul
if %errorlevel% neq 0 (
    echo Nova versão detectada! Atualizando...
    copy "%temp_script%" "%local_script%" /Y >nul
    del "%temp_script%"
    echo Script atualizado. Reiniciando...
    timeout 3 >nul
    start "" "%local_script%"
    exit
) else (
    del "%temp_script%"
    echo Script já está atualizado.
)

:CheckAdb
title Verificando dependências - Mi Easy Recovery
if not exist "%adb_dir%" mkdir "%adb_dir%"
if not exist "%adb%" call :DownloadAdb
if not exist "%fastboot%" call :DownloadAdb

:DownloadConfig
if not exist "%config_file%" (
    echo Baixando arquivo de configuração...
    powershell -command "(New-Object Net.WebClient).DownloadFile('%config_url%', '%config_file%')"
)

:SelDevice
title Selecione o Device - Mi Easy Recovery
cls
echo.
echo ------------------------------------------------------------------------
echo   Selecione o dispositivo                          Mi Easy Recovery
echo ------------------------------------------------------------------------
echo.
echo.

:: Ler dispositivos do JSON
set "index=1"
for /f "tokens=1 delims=:" %%i in ('powershell -command "Get-Content '%config_file%' | ConvertFrom-Json | Select-Object -ExpandProperty devices | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name"') do (
    echo    !index! ) %%i
    set "device[!index!]=%%i"
    set /a index+=1
)
echo    E ) Sair
echo.
set "nb="
set /p "nb= Digite sua opção %USERNAME% > "
if /i "%nb%"=="E" exit
if defined device[%nb%] (
    set "selected_device=!device[%nb%]!"
    goto :SelRecovery
) else (
    goto :SelDevice
)

:SelRecovery
title Selecione o Recovery - Mi Easy Recovery
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                       Mi Easy Recovery - Device - %selected_device%
echo ------------------------------------------------------------------------
echo.
echo.

:: Ler tipos de recovery do JSON para o dispositivo selecionado
set "index=1"
for /f "tokens=1 delims=:" %%i in ('powershell -command "Get-Content '%config_file%' | ConvertFrom-Json | Select-Object -ExpandProperty devices.%selected_device%.recoveries | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name"') do (
    echo    !index! ) %%i
    set "recovery[!index!]=%%i"
    set /a index+=1
)
echo    E ) Voltar
echo.
set "nb="
set /p "nb= Digite sua opção %USERNAME% > "
if /i "%nb%"=="E" goto :SelDevice
if defined recovery[%nb%] (
    set "selected_recovery=!recovery[%nb%]!"
    goto :SelVersion
) else (
    goto :SelRecovery
)

:SelVersion
title Selecione a Versão - Mi Easy Recovery
cls
echo.
echo ------------------------------------------------------------------------
echo   %selected_recovery%                  Mi Easy Recovery - Device - %selected_device%
echo ------------------------------------------------------------------------
echo.
echo.

:: Ler versões do JSON para o recovery selecionado
set "index=1"
for /f "tokens=1,2 delims=," %%i in ('powershell -command "Get-Content '%config_file%' | ConvertFrom-Json | Select-Object -ExpandProperty devices.%selected_device%.recoveries.%selected_recovery% | ForEach-Object { '$($_.version),$($_.link)' }"') do (
    echo    !index! ) %%i
    set "version[!index!]=%%i"
    set "link[!index!]=%%j"
    set /a index+=1
)
echo    E ) Voltar
echo.
set "nb="
set /p "nb= Digite sua opção %USERNAME% > "
if /i "%nb%"=="E" goto :SelRecovery
if defined version[%nb%] (
    set "selected_version=!version[%nb%]!"
    set "selected_link=!link[%nb%]!"
    goto :RecoveryMenu
) else (
    goto :SelVersion
)

:RecoveryMenu
title Mi Easy Recovery - %selected_recovery% %selected_version%
cls
echo.
echo ------------------------------------------------------------------------
echo   %selected_recovery% %selected_version%         Mi Easy Recovery - Device - %selected_device%
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Baixar e extrair %selected_recovery% %selected_version%
echo    2 ) Boot no %selected_recovery% %selected_version%
echo    3 ) Excluir arquivos %selected_version%
echo    E ) Voltar
echo.
set "nb="
set /p "nb= Digite sua opção %USERNAME% > "
if "%nb%"=="1" goto :DownloadAndExtract
if "%nb%"=="2" goto :BootRecovery
if "%nb%"=="3" goto :DeleteFiles
if /i "%nb%"=="E" goto :SelVersion
goto :RecoveryMenu

:DownloadAndExtract
set "recovery_dir=%adb_dir%\device\%selected_device%\recovery\%selected_recovery%\%selected_version%"
mkdir "%recovery_dir%" 2>nul
if exist "%recovery_dir%\%selected_version%.rar" (
    echo Arquivo já baixado!
    goto :Extract
)
echo Baixando %selected_recovery% %selected_version%...
powershell -command "(New-Object Net.WebClient).DownloadFile('%selected_link%', '%recovery_dir%\%selected_version%.rar')"
:Extract
if exist "%recovery_dir%\%selected_version%.img" (
    echo Arquivo já extraído!
) else (
    echo Extraindo...
    "%adb_dir%\WinRAR\WinRAR.exe" x -y -c "%recovery_dir%\%selected_version%.rar" "%recovery_dir%\"
)
timeout 5 >nul
goto :RecoveryMenu

:BootRecovery
if not exist "%recovery_dir%\%selected_version%.img" (
    echo Arquivo não encontrado! Baixe e extraia primeiro.
    timeout 5 >nul
    goto :RecoveryMenu
)
echo Conecte o dispositivo no modo FASTBOOT...
%fastboot% boot "%recovery_dir%\%selected_version%.img"
pause >nul
goto :RecoveryMenu

:DeleteFiles
if exist "%recovery_dir%" (
    rd /s /q "%recovery_dir%"
    echo Arquivos excluídos.
) else (
    echo Nada para excluir.
)
timeout 5 >nul
goto :RecoveryMenu

:DownloadAdb
title Baixando ADB - Mi Easy Recovery
echo Baixando dependências ADB...
mkdir "%adb_dir%\WinRAR" 2>nul
powershell -command "(New-Object Net.WebClient).DownloadFile('%repo_url%/adb/adb.exe', '%adb_dir%\adb.exe')"
powershell -command "(New-Object Net.WebClient).DownloadFile('%repo_url%/adb/fastboot.exe', '%adb_dir%\fastboot.exe')"
powershell -command "(New-Object Net.WebClient).DownloadFile('%repo_url%/adb/AdbWinApi.dll', '%adb_dir%\AdbWinApi.dll')"
powershell -command "(New-Object Net.WebClient).DownloadFile('%repo_url%/adb/AdbWinUsbApi.dll', '%adb_dir%\AdbWinUsbApi.dll')"
powershell -command "(New-Object Net.WebClient).DownloadFile('%repo_url%/adb/WinRAR/WinRAR.exe', '%adb_dir%\WinRAR\WinRAR.exe')"
goto :SelDevice