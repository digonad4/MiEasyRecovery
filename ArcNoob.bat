@echo off
mode 65,15
chcp 65001
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
cls 
:RecTWRP
title Selecione o Twrp 
cls
echo.
echo -----------------------------------------------------------------
echo   Recovery  --------------  Noob Master - Device - Sunny Mojito 
echo -----------------------------------------------------------------
echo.
echo   Twrp
echo.
echo    1 ) 3.5.2
echo    2 ) 3.6.0
echo.
echo.
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite algo %UsERNAME% > "
if '%nb%' == '1' goto RecoveryTwrp352
if '%nb%' == '2' goto RecoveryTwrp360
goto RecTWRP
:RecoveryTwrp352
set vRec=352
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/twrp/352/352.rar
goto Recovery
:RecoveryTwrp360
set vRec=360
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/twrp/360/360.rar
goto Recovery
:Recovery
title Noob Master %rec% %vRec% 
cls
echo.
echo -----------------------------------------------------------------
echo   Noob Master                              Device - Sunny Mojito 
echo -----------------------------------------------------------------
echo.
echo.
echo.
echo 1 ) Baixe e extraia o Twrp %vRec%.rar 
echo 2 ) Boot no Twrp %vRec%
echo E ) Voltar 
echo.
echo.
set nb=
set /p "nb=Digite algo %UsERNAME% > "
if '%nb%' == '1' goto Down
if '%nb%' == '2' goto BootIn
if '%nb%' == 'E' goto RecTWRP
if '%nb%' == 'e' goto RecTWRP
goto Recovery
:Down 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
echo.
echo  Baixando...
echo.
echo.
echo  Estou criando os diretórios e baixando seu arquivo
echo.
echo  Espere...
echo.
echo.
mkdir adb\device\mojito\recovery\twrp\%vRec%\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', 'adb\device\mojito\recovery\twrp\%vRec%\%vRec%.rar') }"
cls 
echo.
echo  Arquivo Baixado 
echo.
echo.
echo  Digite algo para que eu possa extrair o arquivo para você...
echo.
echo.
pause > nul
echo  Extraindo arquivo...
echo.
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\adb\device\mojito\recovery\twrp\%vRec%\%vRec%.rar" "%cd%\adb\device\mojito\recovery\twrp\%vRec%\"
echo.
echo.
echo  Deletando arquivo %vRec%.rar 
echo.
del "%cd%\adb\device\mojito\recovery\twrp\%vRec%\%vRec%.rar"
echo.
echo.
echo  Pressione algo para voltar ao menu.
pause > nul
goto Recovery
:BootIn
cls
echo.
echo  Enviando o comando para o seu device conecte o celular no modo
echo                         FASTBOOT
echo.
echo.
%fastboot% boot "%cd%\adb\device\mojito\recovery\twrp\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto Recovery