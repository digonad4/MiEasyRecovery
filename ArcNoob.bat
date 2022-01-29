@echo off
mode 72,15
chcp 65001
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
cls 
:SelRec
title Selecione o Recovery 
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) TWRP
echo    2 ) OFOX
echo.
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite algo %UsERNAME% > "
if '%nb%' == '1' goto RecTWRP
if '%nb%' == '2' goto RecOFOX
goto SelRec
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:RecTWRP
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
if '%nb%' == 'e' goto SelRec
if '%nb%' == 'E' goto SelRec
goto RecTWRP
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
if '%nb%' == 'E' goto RecTWRP
if '%nb%' == 'e' goto RecTWRP
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
:RecOfox
title Selecione o Ofox 
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) 11.1
echo    E ) Voltar 
echo.
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite algo %UsERNAME% > "
if '%nb%' == '1' goto RecoveryOfox111
if '%nb%' == 'e' goto SelRec
if '%nb%' == 'E' goto SelRec
goto RecOfox
:RecoveryOfox111
set vRec=111
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/Ofox/111/111.rar
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
if '%nb%' == 'E' goto RecOfox
if '%nb%' == 'e' goto RecOfox
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