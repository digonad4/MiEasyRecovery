echo off
color 03
mode 72,15
chcp 65001
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
cls 
:::::: SELECIONAR DEVICE
:SelDevice
title Selecione o Device !
 if exist "%cd%\adb\fastboot.exe"     (echo.) else (goto Adb )
 if exist "%cd%\adb\adb.exe"          (echo.) else (goto Adb )
 if exist "%cd%\adb\AdbWinApi.dll"    (echo.) else (goto Adb )
 if exist "%cd%\adb\AdbWinUsbApi.dll" (echo.) else (goto Adb ) 
 if exist "%cd%\adb\cmd-here.exe"     (echo.) else (goto Adb )
 if exist "%cd%\adb\rleimager.exe"    (echo.) else (goto Adb )
 if exist "%cd%\adb\unins000.dat"     (echo.) else (goto Adb )
 if exist "%cd%\adb\unins000.exe"     (echo.) else (goto Adb )
 if exist "%cd%\adb\WinRAR\WinRAR.exe"(echo.) else (goto Adb )

cls
echo.
echo ------------------------------------------------------------------------
echo   Selecione o dispositivo                                Noob Master 
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo    1 ) Mojito
echo.
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite 1 e tecle enter %UsERNAME% > "
if '%nb%' == '1' goto SelRecMojito
if '%nb%' == '2' goto SelRecLavender
if '%nb%' == '3' goto 
if '%nb%' == 't' goto 
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
echo    3 ) PIXEL EXPERIENCE
echo.
echo    E ) Voltar 
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecTWRPMojito
if '%nb%' == '2' goto RecOFOXMojito
if '%nb%' == '3' goto RecPixelMojito
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
set Twrps=adb\device\mojito\recovery\twrp
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp                                 Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) 3.5.2
echo    2 ) 3.6.0
echo    3 ) 3.6.2
echo    4 ) 3.6.2 A12
echo    E ) Voltar 
echo.
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecoveryTwrp352Mojito
if '%nb%' == '2' goto RecoveryTwrp360Mojito
if '%nb%' == '3' goto RecoveryTwrp362Mojito
if '%nb%' == '4' goto RecoveryTwrp362A12Mojito
if '%nb%' == 'e' goto SelRecMojito
if '%nb%' == 'E' goto SelRecMojito
goto RecTWRPMojito
:RecoveryTwrp352Mojito
set vRec=352
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/twrp/352/352.rar
goto :RecoveryTwrpMojito
:RecoveryTwrp360Mojito
set vRec=360
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/twrp/360/360.rar
goto :RecoveryTwrpMojito
:RecoveryTwrp362Mojito
set vRec=362
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/twrp/362/362.rar
goto :RecoveryTwrpMojito
:RecoveryTwrp362A12Mojito
set vRec=362A12
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/twrp/362A12/362A12.rar
goto :RecoveryTwrpMojito
:RecoveryTwrpMojito
title Noob Master Twrp %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp %vRec%                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Baixe e extraia o Twrp %vRec%.rar 
echo    2 ) Boot no Twrp %vRec%
echo    3 ) Excluir arquivos %vRec%
echo    E ) Voltar 
echo.
echo.
echo.
set nb=
set /p "nb=Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto DownTwrpMojito
if '%nb%' == '2' goto BootInTwrpMojito
if '%nb%' == '3' goto ExcludeTwrpMojito
if '%nb%' == 'E' goto RecTWRPMojito
if '%nb%' == 'e' goto RecTWRPMojito
if '%nb%' == 't' goto ExcludeMojito
goto RecoveryTwrpMojito
:ExcludeTwrpMojito
cls
rd /s %Twrps%\%vRec%\
cls 
echo.
echo.
echo.
echo     Arquivos excluidos.
echo.
echo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryTwrpMojito
:DownTwrpAvisoMojito
cls 
echo.
echo.
echo.
echo     Voce ja baixou o arquivo.
echo.
echo.
echo.
echo     Vamos para o menu novamente, aguarde...
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryTwrpMojito
:AvisoDownTwrpMojito
cls 
echo.
echo.
echo.
echo     Baixe o arquivo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryTwrpMojito
:DownTwrpMojito 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
mkdir %Twrps%\%vRec%\
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( goto DownTwrpAvisoMojito ) else (  cls )
echo.
echo.
echo.
echo     Baixando...
echo.
echo     Estou criando os diretórios e baixando seu arquivo
echo.
echo     Espere...
echo.
echo.
:DownTwrpYesMojito
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', '%Twrps%\%vRec%\%vRec%.rar') }"
cls 
echo.
echo.
echo.
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( echo     Arquivo Baixado ) else ( echo     O Arquivo Não foi Baixado, vefifique e tente novamente  )
echo.
echo.
echo.
echo     Digite sua opção para que eu possa extrair o arquivo para você...
echo.
echo.
echo.
timeout 5 > nul
:ExtractRecoveryTwrpMojito
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( cls ) else ( goto AvisoDownTwrpMojito )
if exist "%cd%\%Twrps%\%vRec%\%vRec%.img" ( goto AvisoFlashTwrpMojito ) else (  cls )
cls
echo.
echo.
echo     Extraindo arquivo...
echo.
echo.
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\%Twrps%\%vRec%\%vRec%.rar" "%cd%\%Twrps%\%vRec%\"
echo.
echo.
echo     Pressione algo para voltar ao menu.
echo     No menu, pressione a opção 2 para boot no Twrp
echo.
echo.
pause > nul
goto RecoveryTwrpMojito
:BootInTwrpMojito
cls
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( goto Ver2TwrpMojito ) else ( goto AvisoDownTwrpMojito )
:Ver2TwrpMojito
if exist "%cd%\%Twrps%\%vRec%\%vRec%.img" ( cls ) else ( goto ExtractRecoveryTwrpMojito )
:BootOnTwrpMojito
echo.
echo        Enviando o comando para o seu device conecte o no modo FASTBOOT
echo.
echo.
echo.
%fastboot% boot "%cd%\%Twrps%\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto RecoveryTwrpMojito
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
echo   Orange FOX                           Noob Master - Device - Mojito 
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
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecoveryOfox111Mojito
if '%nb%' == '2' goto RecoveryOfox111BMojito
if '%nb%' == 'e' goto SelRecMojito
if '%nb%' == 'E' goto SelRecMojito
goto RecOfoxMojito
:RecoveryOfox111Mojito
set vRec=111
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/ofox/111/111.rar
goto :RecoveryOfoxMojito
:RecoveryOfox111BMojito
set vRec=111B
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/ofox/111B/111B.rar
goto :RecoveryOfoxMojito
:RecoveryOfoxMojito
set OFOXs=adb\device\mojito\recovery\Ofox
title Noob Master Ofox %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Ofox %vRec%                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Baixe e extraia o Ofox %vRec%.rar 
echo    2 ) Boot no Ofox %vRec%
echo    3 ) Excluir arquivos %vRec%
echo    E ) Voltar 
echo.
echo.
echo.
set nb=
set /p "nb=Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto DownOfoxMojito 
if '%nb%' == '2' goto BootInOfoxMojito
if '%nb%' == '3' goto ExcludeOfoxMojito
if '%nb%' == 'E' goto RecOfoxMojito
if '%nb%' == 'e' goto RecOfoxMojito
if '%nb%' == 't' goto Exclude
goto RecoveryOfoxMojito
:ExcludeOfoxMojito
cls
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.rar" ( cls ) else ( goto AvisoDownOfoxMojito )
rd /s %OFOXs%\%vRec%\
cls 
echo.
echo.
echo.
echo     Arquivos excluidos.
echo.
echo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryOfoxMojito
:DownOfoxAvisoMojito
cls 
echo.
echo.
echo.
echo     Voce ja baixou o arquivo.
echo.
echo.
echo.
echo     Vamos para o menu novamente, aguarde...
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryOfoxMojito
:AvisoDownOfoxMojito
cls 
echo.
echo.
echo.
echo     Baixe o arquivo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryOfoxMojito
:DownOfoxMojito 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
mkdir %OFOXs%\%vRec%\
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.rar" ( goto DownOfoxAvisoMojito ) else (  cls )
echo.
echo.
echo.
echo     Baixando...
echo.
echo     Estou criando os diretórios e baixando seu arquivo
echo.
echo     Espere...
echo.
echo.
:DownOfoxYesMojito
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', '%OFOXs%\%vRec%\%vRec%.rar') }"
cls 
echo.
echo.
echo.
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.rar" ( echo     Arquivo Baixado ) else ( echo     O Arquivo Não foi Baixado, vefifique e tente novamente  )
echo.
echo.
echo.
echo     Digite sua opção para que eu possa extrair o arquivo para você...
echo.
echo.
echo.
timeout 5 > nul
:ExtractRecoveryOfoxMojito
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.img" ( goto AvisoFlashOfoxMojito ) else (  cls )
cls
echo.
echo.
echo     Extraindo arquivo...
echo.
echo.
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\%OFOXs%\%vRec%\%vRec%.rar" "%cd%\%OFOXs%\%vRec%\"
echo.
echo.
echo     Pressione algo para voltar ao menu.
echo     No menu, pressione a opção 2 para boot no Ofox
echo.
echo.
pause > nul
goto RecoveryOfoxMojito
:BootInOfoxMojito
cls
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.rar" ( goto Ver2OfoxMojito ) else ( goto AvisoDownOfoxMojito )
:Ver2OfoxMojito
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.img" ( cls ) else ( goto ExtractRecoveryOfoxMojito )
:BootOnOfoxMojito
echo.
echo        Enviando o comando para o seu device conecte o no modo FASTBOOT
echo.
echo.
echo.
%fastboot% boot "%cd%\%OFOXs%\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto RecoveryOfoxMojito
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:::::: SELECIONAR RECOVERY
:SelRecLavender
title Selecione o Recovery 
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                             Noob Master - Device - Lavender 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) TWRP
echo    E ) Voltar 
echo.
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecTWRPLavender
if '%nb%' == 'e' goto SelDevice
if '%nb%' == 'E' goto SelDevice
goto SelRecLavender
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:RecTWRPLavender
title Selecione o Twrp 
set Twrps=adb\device\Lavender\recovery\twrp
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                            Noob Master - Device - Lavender 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) 3.4.0
echo    2 ) 3.5.2
echo    3 ) 3.6.0
echo    E ) Voltar 
echo.
echo.
echo.
set nb=
set /p "nb=Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecoveryTwrp340Lavender
if '%nb%' == '2' goto RecoveryTwrp352Lavender
if '%nb%' == '3' goto RecoveryTwrp360Lavender
if '%nb%' == 'e' goto SelRecLavender
if '%nb%' == 'E' goto SelRecLavender
goto RecTWRPLavender
:RecoveryTwrp340Lavender
set vRec=340
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/Lavender/recovery/twrp/340/340.rar
goto :RecoveryTwrpLavender
:RecoveryTwrp352Lavender
set vRec=352
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/Lavender/recovery/twrp/352/352.rar
goto :RecoveryTwrpLavender
:RecoveryTwrp360Lavender
set vRec=360
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/Lavender/recovery/twrp/360/360.rar
goto :RecoveryTwrpLavender
:RecoveryTwrpLavender
title Noob Master Twrp %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp %vRec%                            Noob Master - Device - Lavender 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Baixe e extraia o Twrp %vRec%.rar 
echo    2 ) Flash do Twrp %vRec%
echo    3 ) Excluir arquivos %vRec%
echo    E ) Voltar 
echo.
echo.
echo.
set nb=
set /p "nb=Digite algo %UsERNAME% > "
if '%nb%' == '1' goto DownTwrpLavender 
if '%nb%' == '2' goto BootInTwrpLavender
if '%nb%' == '3' goto ExcludeTwrpLavender
if '%nb%' == 'E' goto RecTWRPLavender
if '%nb%' == 'e' goto RecTWRPLavender
if '%nb%' == 't' goto Exclude
goto RecoveryTwrpLavender
:ExcludeTwrpLavender
cls
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( cls ) else ( goto AvisoDownTwrpLavender )
rd /s %Twrps%\%vRec%\
cls 
echo.
echo.
echo.
echo     Arquivos excluidos.
echo.
echo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryTwrpLavender
:DownTwrpAvisoLavender
cls 
echo.
echo.
echo.
echo     Voce ja baixou o arquivo.
echo.
echo.
echo.
echo     Vamos para o menu novamente, aguarde...
echo     Selecione 2 para que o script extraia os arquivos.
echo.
echo.
timeout 5 > nul
goto RecoveryTwrpLavender
:AvisoDownTwrpLavender
cls 
echo.
echo.
echo.
echo     Baixe o arquivo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryTwrpLavender
:DownTwrpLavender 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
mkdir %Twrps%\%vRec%\
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( goto DownTwrpAvisoLavender ) else (  cls )
echo.
echo.
echo.
echo     Baixando...
echo.
echo     Estou criando os diretórios e baixando seu arquivo
echo.
echo     Espere...
echo.
echo.
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', '%Twrps%\%vRec%\%vRec%.rar') }"
:DownTwrpYesLavender
cls 
echo.
echo.
echo.
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( echo     Arquivo Baixado ) else ( echo     O Arquivo Não foi Baixado, vefifique e tente novamente  )
echo.
echo.
echo.
echo    Digite sua opção para que eu possa extrair o arquivo para você...
echo.
echo.
echo.
timeout 5 > nul
:ExtractRecoveryTwrpLavender
if exist "%cd%\%Twrps%\%vRec%\%vRec%.img" ( goto AvisoFlashTwrpLavender ) else (  cls )
cls
echo.
echo.
echo     Extraindo arquivo...
echo.
echo.
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\%Twrps%\%vRec%\%vRec%.rar" "%cd%\%Twrps%\%vRec%\"
echo.
echo.
echo     Pressione algo para voltar ao menu.
echo     No menu, pressione a opção 2 para boot no Twrp
echo.
echo.
pause > nul
goto RecoveryTwrpLavender
:BootInTwrpLavender
cls
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( goto Ver2TwrpLavender ) else ( goto AvisoDownTwrpLavender )
:Ver2TwrpLavender
if exist "%cd%\%Twrps%\%vRec%\%vRec%.img" ( cls ) else ( goto ExtractRecoveryTwrpLavender )
:BootOnTwrpLavender


echo.
echo        Enviando o comando para o seu device conecte o no modo FASTBOOT
echo.
echo.
echo.
%fastboot% --disable-verity --disable-verification flash vbmeta "%cd%\%Twrps%\%vRec%\vbmeta.img"
%fastboot% erase recovery
%fastboot% flash recovery "%cd%\%Twrps%\%vRec%\%vRec%.img"
%fastboot% reboot bootloader
%fastboot% boot "%cd%\%Twrps%\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto RecoveryTwrpLavender
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:RecPixelMojito
title Selecione o Pixel 
set Pixels=adb\device\mojito\recovery\Pixel
cls
echo.
echo ------------------------------------------------------------------------
echo   Pixel                                 Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Pixel A12
echo    2 ) Pixel A13
echo. 
echo.
echo.   E ) Voltar 
echo.
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecoveryPixel2Mojito
if '%nb%' == '2' goto RecoveryPixel3Mojito
if '%nb%' == 'e' goto SelRecMojito
if '%nb%' == 'E' goto SelRecMojito
goto RecPixelMojito

:RecoveryPixel2Mojito
set vRec=PEA12
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/Pixel/pea12/pea12.rar
goto :RecoveryPixelMojito

:RecoveryPixel3Mojito
set vRec=PEA13
set linkA1=https://raw.githubusercontent.com/digonad4/arcNoob/main/adb/device/mojito/recovery/Pixel/pea13/pea13.rar
goto :RecoveryPixelMojito

:RecoveryPixelMojito
title Noob Master Pixel %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Pixel %vRec%                            Noob Master - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Baixe e extraia o Pixel %vRec%.rar 
echo    2 ) Boot no Pixel %vRec%
echo    3 ) Excluir arquivos %vRec%
echo    E ) Voltar 
echo.
echo.
echo.
set nb=
set /p "nb=Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto DownPixelMojito
if '%nb%' == '2' goto BootInPixelMojito
if '%nb%' == '3' goto ExcludePixelMojito
if '%nb%' == 'E' goto RecPixelMojito
if '%nb%' == 'e' goto RecPixelMojito
if '%nb%' == 't' goto ExcludeMojito
goto RecoveryPixelMojito
:ExcludePixelMojito
cls
rd /s %Pixels%\%vRec%\
cls 
echo.
echo.
echo.
echo     Arquivos excluidos.
echo.
echo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryPixelMojito
:DownPixelAvisoMojito
cls 
echo.
echo.
echo.
echo     Voce ja baixou o arquivo.
echo.
echo.
echo.
echo     Vamos para o menu novamente, aguarde...
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryPixelMojito
:AvisoDownPixelMojito
cls 
echo.
echo.
echo.
echo     Baixe o arquivo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryPixelMojito
:DownPixelMojito 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
mkdir %Pixels%\%vRec%\
if exist "%cd%\%Pixels%\%vRec%\%vRec%.rar" ( goto DownPixelAvisoMojito ) else (  cls )
echo.
echo.
echo.
echo     Baixando...
echo.
echo     Estou criando os diretórios e baixando seu arquivo
echo.
echo     Espere...
echo.
echo.
:DownPixelYesMojito
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%linkA1%', '%Pixels%\%vRec%\%vRec%.rar') }"
cls 
echo.
echo.
echo.
if exist "%cd%\%Pixels%\%vRec%\%vRec%.rar" ( echo     Arquivo Baixado ) else ( echo     O Arquivo Não foi Baixado, vefifique e tente novamente  )
echo.
echo.
echo.
echo     Digite sua opção para que eu possa extrair o arquivo para você...
echo.
echo.
echo.
timeout 5 > nul
:ExtractRecoveryPixelMojito
if exist "%cd%\%Pixels%\%vRec%\%vRec%.rar" ( cls ) else ( goto AvisoDownPixelMojito )
if exist "%cd%\%Pixels%\%vRec%\%vRec%.img" ( goto AvisoFlashPixelMojito ) else (  cls )
cls
echo.
echo.
echo     Extraindo arquivo...
echo.
echo.
"%cd%\adb\WinRAR\WinRAR.exe" x -y -c "%cd%\%Pixels%\%vRec%\%vRec%.rar" "%cd%\%Pixels%\%vRec%\"
echo.
echo.
echo     Pressione algo para voltar ao menu.
echo     No menu, pressione a opção 2 para boot no Pixel
echo.
echo.
pause > nul
goto RecoveryPixelMojito
:BootInPixelMojito
cls
if exist "%cd%\%Pixels%\%vRec%\%vRec%.rar" ( goto Ver2PixelMojito ) else ( goto AvisoDownPixelMojito )
:Ver2PixelMojito
if exist "%cd%\%Pixels%\%vRec%\%vRec%.img" ( cls ) else ( goto ExtractRecoveryPixelMojito )
:BootOnPixelMojito
echo.
echo        Enviando o comando para o seu device conecte o no modo FASTBOOT
echo.
echo.
echo.
%fastboot% boot "%cd%\%Pixels%\%vRec%\%vRec%.img"
echo.
echo.
echo.
pause > nul
goto RecoveryPixelMojito
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:Adb 
title 	Baixando ADB para que o Noob Master funcione corretamente.
cls
echo.
echo.
echo.
echo	 Estou baixando o que falta para que tudo funcione corretamente.
echo.
echo	 Fique tranquilo, vou te avisar quando acabar !
echo.
echo.
echo.
echo.
mkdir adb
mkdir adb\WinRAR
set server=https://github.com/digonad4/arcNoob/raw/main/
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/WinRAR/WinRAR.exe', 'adb\WinRAR\WinRAR.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/adb.exe', 'adb\adb.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/rleimager.exe', 'adb\rleimager.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/AdbWinUsbApi.dll', 'adb\AdbWinUsbApi.dll') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/AdbWinApi.dll', 'adb\AdbWinApi.dll') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/unins000.exe', 'adb\unins000.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/unins000.dat', 'adb\unins000.dat') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/fastboot.exe', 'adb\fastboot.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/cmd-here.exe', 'adb\cmd-here.exe') }"
echo.
 if exist "%cd%\adb\fastboot.exe"     (echo.) else (goto erroADB )
 if exist "%cd%\adb\adb.exe"          (echo.) else (goto erroADB )
 if exist "%cd%\adb\AdbWinApi.dll"    (echo.) else (goto erroADB )
 if exist "%cd%\adb\AdbWinUsbApi.dll" (echo.) else (goto erroADB ) 
 if exist "%cd%\adb\cmd-here.exe"     (echo.) else (goto erroADB )
 if exist "%cd%\adb\rleimager.exe"    (echo.) else (goto erroADB )
 if exist "%cd%\adb\unins000.dat"     (echo.) else (goto erroADB )
 if exist "%cd%\adb\unins000.exe"     (echo.) else (goto erroADB )
cls
echo.
echo.
echo.
echo 	Baixei sas poha tudo pra tu safado preguiçoso kkkk
echo.
echo		Perai ! Ou tecla enter apressadinho.
echo.
echo.
echo.
timeout 5 > nul
goto SelDevice




