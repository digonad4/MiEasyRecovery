@echo off
title Noob Master TWRP %vRec% 
mode 65,15
chcp 65001
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
cls 
set recovery=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/device/mojito/recovery/
set vRec=3.5.2
:INI
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
echo.
echo.
echo.
set nb=
set /p "nb=Digite algo %UsERNAME% > "
if '%nb%' == '1' goto Down
if '%nb%' == '2' goto BootIn
goto INI
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
mkdir adb\file\twrp\mojito\%vRec%\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%recovery%%vRec%', 'adb\file\twrp\Mojito\%vRec%\%vRec%.rar') }"
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
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\adb\file\twrp\Mojito\%vRec%\%vRec%.rar" "%cd%\adb\file\twrp\Mojito\%vRec%\"
echo.
echo.
echo  Deletando arquivo %vRec%.rar 
echo.
del "%cd%\adb\file\twrp\Mojito\%vRec%\%vRec%.rar"
echo.
echo.
echo  Pressione algo para voltar ao menu.
pause > nul
goto INI
:BootIn
cls
echo.
echo  Enviando o comando para o seu device conecte o celular no modo
echo                         FASTBOOT
echo.
echo.
%fastboot% boot "%cd%\adb\file\twrp\Mojito\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto INI