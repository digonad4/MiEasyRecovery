@echo off
mode 65,15
chcp 65001
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
cls 
set linkA1=https://raw.githubusercontent.com/devrodrigopires/arcNoob/main/adb/file/twrp/mojito/3.5.2/3.5.2.rar
:INI
cls
echo.
echo -----------------------------------------------------------------
echo   Noob Master                              Device - Sunny Mojito 
echo -----------------------------------------------------------------
echo.
echo.
echo.
echo 1 ) Baixe e extraia o Twrp 3.5.2.rar 
echo 2 ) Boot no Twrp 3.5.2
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
mkdir adb\file\twrp\mojito\3.5.2\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', 'adb\file\twrp\Mojito\3.5.2\3.5.2.rar') }"
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
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\adb\file\twrp\Mojito\3.5.2\3.5.2.rar" "%cd%\adb\file\twrp\Mojito\3.5.2\"
echo.
echo.
echo  Deletando arquivo 3.5.2.rar 
echo.
del "%cd%\adb\file\twrp\Mojito\3.5.2\3.5.2.rar"
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
%fastboot% boot "%cd%\adb\file\twrp\Mojito\3.5.2\3.5.2.img"
echo.
echo.
echo.
pause > nul
goto INI