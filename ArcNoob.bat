@echo off
color 03
mode 72,15
chcp 65001
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
cls 
:::::: SELECIONAR DEVICE
:::::: SELECIONAR DEVICE
:::::: SELECIONAR DEVICE
:::::: SELECIONAR DEVICE
:::::: SELECIONAR DEVICE
:::::: SELECIONAR DEVICE
:::::: SELECIONAR DEVICE
:SelDevice
title Selecione o Device !
cls
echo.
echo ------------------------------------------------------------------------
echo   Selecione o dispositivo                                Noob Master 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Mi A2
echo    2 ) Wayne
echo    3 ) Mojito
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite algo %UsERNAME% > "
if '%nb%' == '1' goto SelRecJasmine
if '%nb%' == '2' goto SelRecWayne
if '%nb%' == '3' goto SelRecMojito
goto SelDevice
:SelRecJasmine
cls
echo.
echo.
echo    Em desenvolvimento...........
echo.
echo.
echo.
timeout 10 > nul
goto SelDevice
:SelRecWayne
cls
echo.
echo.
echo    Em desenvolvimento...........
echo.
echo.
echo.
timeout 10 > nul
goto SelDevice
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:SelRecMojito
title Selecione o Recovery 
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                             Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) TWRP
echo    2 ) OFOX
echo    E ) Voltar 
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite algo %UsERNAME% > "
if '%nb%' == '1' goto RecTWRPMojito
if '%nb%' == '2' goto RecOFOXMojito
if '%nb%' == 'e' goto SelDevice
if '%nb%' == 'E' goto SelDevice
goto SelRecMojito
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:RecTWRPMojito
title Selecione o Twrp 
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) 3.5.2
echo    2 ) 3.6.0
echo    E ) Voltar 
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite algo %UsERNAME% > "
if '%nb%' == '1' goto RecoveryTwrp352
if '%nb%' == '2' goto RecoveryTwrp360
if '%nb%' == 'e' goto SelRecMojito
if '%nb%' == 'E' goto SelRecMojito
goto RecTWRPMojito

:RecoveryTwrp352
set vRec=352
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/twrp/352/352.rar
goto :RecoveryTwrp
:RecoveryTwrp360
set vRec=360
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/twrp/360/360.rar
goto :RecoveryTwrp
:RecoveryTwrp
title Noob Master %rec% %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp %vRec%                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Baixe e extraia o Twrp %vRec%.rar 
echo    2 ) Boot no Twrp %vRec%
echo    E ) Voltar 
echo.
echo.
echo.
echo.
set nb=
set /p "nb=Digite algo %UsERNAME% > "
if '%nb%' == '1' goto DownTwrp 
if '%nb%' == '2' goto BootIn
if '%nb%' == 'E' goto RecTWRPMojito
if '%nb%' == 'e' goto RecTWRPMojito
goto RecoveryTwrp
:DownTwrp 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
echo.
echo     Baixando...
echo.
echo.
echo     Estou criando os diretórios e baixando seu arquivo
echo.
echo     Espere...
echo.
echo.
mkdir adb\device\mojito\recovery\twrp\%vRec%\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', 'adb\device\mojito\recovery\twrp\%vRec%\%vRec%.rar') }"
cls 
echo.
echo     Arquivo Baixado 
echo.
echo.
echo     Digite algo para que eu possa extrair o arquivo para você...
echo.
echo.
pause > nul
echo     Extraindo arquivo...
echo.
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\adb\device\mojito\recovery\twrp\%vRec%\%vRec%.rar" "%cd%\adb\device\mojito\recovery\twrp\%vRec%\"
echo.
echo.
echo     Deletando arquivo %vRec%.rar 
echo.
del "%cd%\adb\device\mojito\recovery\twrp\%vRec%\%vRec%.rar"
echo.
echo.
echo     Pressione algo para voltar ao menu.
pause > nul
goto RecoveryTwrp
:BootIn
cls
echo.
echo        Enviando o comando para o seu device conecte o no modo FASTBOOT
echo.
echo.
echo.
%fastboot% boot "%cd%\adb\device\mojito\recovery\twrp\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto RecoveryTwrp
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:RecOfoxMojito
title Selecione o Ofox 
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) 11.1
echo    2 ) 11.1 Beta
echo    E ) Voltar
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite algo %UsERNAME% > "
if '%nb%' == '1' goto RecoveryOfox111
if '%nb%' == '2' goto RecoveryOfox111B
if '%nb%' == 'e' goto SelRecMojito
if '%nb%' == 'E' goto SelRecMojito
goto RecOfoxMojito
:RecoveryOfox111
set vRec=111
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/Ofox/111/111.rar
goto :RecoveryOfox
:RecoveryOfox111B
set vRec=111B
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/Ofox/111B/111B.rar
goto :RecoveryOfox
:RecoveryOfox
title Noob Master %rec% %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp %vRec%                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Baixe e extraia o Twrp %vRec%.rar 
echo    2 ) Boot no Twrp %vRec%
echo    E ) Voltar 
echo.
echo.
echo.
echo.
set nb=
set /p "nb=Digite algo %UsERNAME% > "
if '%nb%' == '1' goto DownOfox 
if '%nb%' == '2' goto BootIn
if '%nb%' == 'E' goto RecOfoxMojito
if '%nb%' == 'e' goto RecOfoxMojito
goto RecoveryOfox
:DownOfox 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
echo.
echo    Baixando...
echo.
echo.
echo    Estou criando os diretórios e baixando seu arquivo
echo.
echo    Espere...
echo.
echo.
mkdir adb\device\mojito\recovery\Ofox\%vRec%\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', 'adb\device\mojito\recovery\Ofox\%vRec%\%vRec%.rar') }"
cls 
echo.
echo    Arquivo Baixado 
echo.
echo.
echo    Digite algo para que eu possa extrair o arquivo para você...
echo.
echo.
pause > nul
echo    Extraindo arquivo...
echo.
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\adb\device\mojito\recovery\Ofox\%vRec%\%vRec%.rar" "%cd%\adb\device\mojito\recovery\Ofox\%vRec%\"
echo.
echo.
echo    Deletando arquivo %vRec%.rar 
echo.
del "%cd%\adb\device\mojito\recovery\Ofox\%vRec%\%vRec%.rar"
echo.
echo.
echo    Pressione algo para voltar ao menu.
pause > nul
goto RecoveryOfox
:BootIn
cls
echo.
echo    Enviando o comando para o seu device conecte o no modo FASTBOOT
echo.
echo.
echo.
%fastboot% boot "%cd%\adb\device\mojito\recovery\Ofox\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto RecoveryOfox