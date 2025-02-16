@echo off
setlocal ENABLEDELAYEDEXPANSION

:: Configuração de variáveis
set script_url=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/MiEasyRecovery.bat
set devices_url=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/devices.json
set local_devices=adb\devices.json
set log_file=adb\log.txt
set backup_dir=adb\backup
set report_file=adb\backup_integrity_report.txt
set recovery_dir=adb\recoveries
set remote_log_url=https://yourserver.com/upload_log
set version_file=adb\version.txt

:: Criar diretório de backup e recovery se não existirem
if not exist "%backup_dir%" mkdir "%backup_dir%"
if not exist "%recovery_dir%" mkdir "%recovery_dir%"
if not exist "adb" mkdir "adb"

:: Verificação de versão
echo Verificando atualizações...
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%script_url%', 'MiEasyRecovery_new.bat') }"
for /f "delims=" %%v in ('findstr /C:"version" MiEasyRecovery_new.bat') do set "remote_version=%%v"
set "remote_version=!remote_version:version=!"
set "remote_version=!remote_version: =!"

if exist "MiEasyRecovery.bat" (
    for /f "delims=" %%v in ('findstr /C:"version" MiEasyRecovery.bat') do set "local_version=%%v"
    set "local_version=!local_version:version=!"
    set "local_version=!local_version: =!"
    
    if "!local_version!" NEQ "!remote_version!" (
        echo Atualizacao encontrada! Versão local: !local_version! | Versão remota: !remote_version!
        set /p "update_choice=Deseja aplicar? (S/N): "
        if /i "!update_choice!" == "S" (
            move /Y MiEasyRecovery_new.bat MiEasyRecovery.bat
            start MiEasyRecovery.bat
            exit
        ) else (
            del MiEasyRecovery_new.bat
        )
    ) else (
        echo Você está usando a versão mais recente: !local_version!
        del MiEasyRecovery_new.bat
    )
) else (
    move /Y MiEasyRecovery_new.bat MiEasyRecovery.bat
)

:: Baixar lista de dispositivos
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%devices_url%', '%local_devices%') }"

:: Verificar se devices.json foi baixado corretamente
if not exist "%local_devices%" (
    echo ERRO: Falha ao carregar dispositivos! >> %log_file%
    echo ERRO: Verifique a conexão e tente novamente.
    pause
    exit
)

:: Menu principal
:MainMenu
cls
echo ------------------------------------------------------------
echo              Mi Easy Recovery - Selecione o Device
echo ------------------------------------------------------------
echo.

echo 1) Selecionar Dispositivo
echo 2) Diagnóstico do Sistema
echo 3) Restaurar Arquivos ADB
echo 4) Restaurar Backup Manualmente
echo 5) Verificar Integridade do Backup
echo 6) Enviar Logs para Suporte
echo E) Sair
echo.
set /p "choice=Digite sua opcao: "

if /i "%choice%" == "E" exit
if "%choice%" == "1" goto SelectDevice
if "%choice%" == "2" goto DiagnosticMenu
if "%choice%" == "3" call :BackupAndRestore & pause & goto MainMenu
if "%choice%" == "4" call :ManualRestore & pause & goto MainMenu
if "%choice%" == "5" call :CheckBackupIntegrity & pause & goto MainMenu
if "%choice%" == "6" call :SendLog & pause & goto MainMenu

:: Selecionar dispositivo
:SelectDevice
cls
echo ------------------------------------------------------------
echo              Selecione o Dispositivo
echo ------------------------------------------------------------
echo.

set /a index=0
for /f "tokens=2 delims=:,{}" %%D in ('findstr /C:"\"name\"" %local_devices%') do (
    set /a index+=1
    echo !index!) %%D
)

echo E) Voltar
echo.
set /p "device_choice=Digite sua opcao: "

if /i "%device_choice%" == "E" goto MainMenu

:: Selecionar recovery para o dispositivo escolhido
:SelectRecovery
cls
echo ------------------------------------------------------------
echo              Selecione o Recovery
echo ------------------------------------------------------------
echo.

set /a index=0
for /f "tokens=2 delims=:,{}" %%R in ('findstr /C:"\"name\"" %local_devices%') do (
    set /a index+=1
    echo !index!) %%R
)

echo E) Voltar
echo.
set /p "recovery_choice=Digite sua opcao: "

if /i "%recovery_choice%" == "E" goto MainMenu

:: Download e instalação do recovery
:DownloadAndInstallRecovery
cls
echo Baixando recovery...
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%recovery_url%', '%recovery_dir%/%recovery_file%') }"

if exist "%recovery_dir%\%recovery_file%" (
    echo Instalando recovery...
    adb reboot bootloader
    fastboot flash recovery "%recovery_dir%\%recovery_file%"
    fastboot reboot
    echo Recovery instalado com sucesso!
) else (
    echo ERRO: Falha ao baixar %recovery_name%. Verifique a conexão.
)

pause
goto MainMenu

:: Envio de logs para suporte
:SendLog
cls
echo ------------------------------------------------------------
echo              Enviar Logs para Diagnóstico
echo ------------------------------------------------------------
echo.
echo Deseja enviar seus logs para análise? (S/N)
set /p "send_choice=Digite sua opcao: "
if /i "%send_choice%" == "N" exit /b
if /i "%send_choice%" == "S" (
    echo Enviando logs...
    curl -F "file=@%log_file%" %remote_log_url% -o adb\log_upload_response.txt
    if %errorlevel% == 0 (
        echo Logs enviados com sucesso! >> %log_file%
        echo Veja a resposta em adb\log_upload_response.txt.
    ) else (
        echo ERRO: Falha ao enviar os logs! Verifique sua conexão. >> %log_file%
    )
)
pause
goto MainMenu

:: Fim
endlocal