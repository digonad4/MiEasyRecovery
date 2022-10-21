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
echo   Selecione o dispositivo                          Mi Easy Recovery 
echo ------------------------------------------------------------------------
echo.
echo.
echo.
echo    1 ) Mojito
echo    2 ) Sweet
echo.
echo.
echo.
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto SelRecMojito
if '%nb%' == '2' goto SelRecsweet
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
echo   Recovery                       Mi Easy Recovery - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) TWRP
echo    2 ) OFOX
echo    3 ) PIXEL EXPERIENCE
echo    E ) Voltar 
echo.
echo.
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
echo   Twrp                           Mi Easy Recovery - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) 3.5.2
echo    2 ) 3.6.0
echo    3 ) 3.6.2
echo    4 ) 3.6.2 A12
echo    5 ) 3.7.0 A12
echo    E ) Voltar 
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecoveryTwrp352Mojito
if '%nb%' == '2' goto RecoveryTwrp360Mojito
if '%nb%' == '3' goto RecoveryTwrp362Mojito
if '%nb%' == '4' goto RecoveryTwrp362A12Mojito
if '%nb%' == '5' goto RecoveryTwrp370A12Mojito
if '%nb%' == 'e' goto SelRecMojito
if '%nb%' == 'E' goto SelRecMojito
goto RecTWRPMojito
:RecoveryTwrp352Mojito
set vRec=352
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/mojito/recovery/twrp/352/352.rar
goto :RecoveryTwrpMojito
:RecoveryTwrp360Mojito
set vRec=360
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/mojito/recovery/twrp/360/360.rar
goto :RecoveryTwrpMojito
:RecoveryTwrp362Mojito
set vRec=362
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/mojito/recovery/twrp/362/362.rar
goto :RecoveryTwrpMojito
:RecoveryTwrp362A12Mojito
set vRec=362A12
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/mojito/recovery/twrp/362A12/362A12.rar
goto :RecoveryTwrpMojito
:RecoveryTwrp370A12Mojito
set vRec=370A12
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/mojito/recovery/twrp/370A12/370A12.rar
goto :RecoveryTwrpMojito
:RecoveryTwrpMojito
title  Mi Easy Recovery Twrp %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp %vRec%                      Mi Easy Recovery - Device - Mojito 
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
echo   Orange FOX                     Mi Easy Recovery - Device - Mojito 
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
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/mojito/recovery/ofox/111/111.rar
goto :RecoveryOfoxMojito
:RecoveryOfox111BMojito
set vRec=111B
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/mojito/recovery/ofox/111B/111B.rar
goto :RecoveryOfoxMojito
:RecoveryOfoxMojito
set OFOXs=adb\device\mojito\recovery\Ofox
title  Mi Easy Recovery Ofox %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Ofox %vRec%                      Mi Easy Recovery - Device - Mojito 
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
:::::: PIXEL RECOVERY
:::::: PIXEL RECOVERY
:::::: PIXEL RECOVERY
:::::: PIXEL RECOVERY
:::::: PIXEL RECOVERY
:::::: PIXEL RECOVERY
:::::: PIXEL RECOVERY
:RecPixelMojito
title Selecione o Pixel 
set Pixels=adb\device\mojito\recovery\Pixel
cls
echo.
echo ------------------------------------------------------------------------
echo   Pixel                           Mi Easy Recovery - Device - Mojito 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) Pixel A12
echo    2 ) Pixel A13
echo.   E ) Voltar 
echo.
echo. 
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
set linkA1=https://github.com/digonad4/mieasyrecovery/raw/main/adb/device/mojito/recovery/pixel/pea12/PEA12.rar

goto :RecoveryPixelMojito

:RecoveryPixel3Mojito
set vRec=PEA13
set linkA1=https://github.com/digonad4/mieasyrecovery/raw/main/adb/device/mojito/recovery/pixel/pea13/PEA13.rar
goto :RecoveryPixelMojito

:RecoveryPixelMojito
title  Mi Easy Recovery Pixel %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Pixel %vRec%                      Mi Easy Recovery - Device - Mojito 
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
:::::: SWEET RECOVERY 
:::::: SWEET RECOVERY
:::::: SWEET RECOVERY
:::::: SWEET RECOVERY
:::::: SWEET RECOVERY
:::::: SWEET RECOVERY
:::::: SWEET RECOVERY
:SelRecsweet
title Selecione o Recovery 
cls
echo.
echo ------------------------------------------------------------------------
echo   Recovery                       Mi Easy Recovery - Device - sweet 
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
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecTWRPsweet
if '%nb%' == '2' goto RecOFOXsweet
if '%nb%' == 'e' goto SelDevice
if '%nb%' == 'E' goto SelDevice
goto SelRecsweet
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:::::: TWRP RECOVERY
:RecTWRPsweet
title Selecione o Twrp 
set Twrps=adb\device\sweet\recovery\twrp
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp                           Mi Easy Recovery - Device - sweet 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) 3.6.1
echo    E ) Voltar
echo.
echo.
echo. 
echo.
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecoveryTwrp361sweet
if '%nb%' == 'e' goto SelRecsweet
if '%nb%' == 'E' goto SelRecsweet
goto RecTWRPsweet
:RecoveryTwrp361sweet
set vRec=361
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/sweet/recovery/twrp/361/361.rar
goto :RecoveryTwrpsweet
:RecoveryTwrpsweet
title  Mi Easy Recovery Twrp %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Twrp %vRec%                      Mi Easy Recovery - Device - sweet 
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
if '%nb%' == '1' goto DownTwrpsweet
if '%nb%' == '2' goto BootInTwrpsweet
if '%nb%' == '3' goto ExcludeTwrpsweet
if '%nb%' == 'E' goto RecTWRPsweet
if '%nb%' == 'e' goto RecTWRPsweet
if '%nb%' == 't' goto Excludesweet
goto RecoveryTwrpsweet
:ExcludeTwrpsweet
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
goto RecoveryTwrpsweet
:DownTwrpAvisosweet
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
goto RecoveryTwrpsweet
:AvisoDownTwrpsweet
cls 
echo.
echo.
echo.
echo     Baixe o arquivo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryTwrpsweet
:DownTwrpsweet 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
mkdir %Twrps%\%vRec%\
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( goto DownTwrpAvisosweet ) else (  cls )
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
:DownTwrpYessweet
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
:ExtractRecoveryTwrpsweet
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( cls ) else ( goto AvisoDownTwrpsweet )
if exist "%cd%\%Twrps%\%vRec%\%vRec%.img" ( goto AvisoFlashTwrpsweet ) else (  cls )
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
goto RecoveryTwrpsweet
:BootInTwrpsweet
cls
if exist "%cd%\%Twrps%\%vRec%\%vRec%.rar" ( goto Ver2Twrpsweet ) else ( goto AvisoDownTwrpsweet )
:Ver2Twrpsweet
if exist "%cd%\%Twrps%\%vRec%\%vRec%.img" ( cls ) else ( goto ExtractRecoveryTwrpsweet )
:BootOnTwrpsweet
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
goto RecoveryTwrpsweet
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:::::: FOX RECOVERY
:RecOfoxsweet
title Selecione o Ofox 
cls
echo.
echo ------------------------------------------------------------------------
echo   Orange FOX                     Mi Easy Recovery - Device - sweet 
echo ------------------------------------------------------------------------
echo.
echo.
echo    1 ) R 11.1_6
echo    2 ) R 12.1_1
echo    3 ) R 12.1_2
echo    4 ) R 12.1_3
echo    E ) Voltar
echo.
echo.
echo.
set nb=
set /p "nb= Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto RecoveryOfoxR1116sweet
if '%nb%' == '2' goto RecoveryOfoxR1211sweet
if '%nb%' == '3' goto RecoveryOfoxR1212sweet
if '%nb%' == '4' goto RecoveryOfoxR1213sweet
if '%nb%' == 'e' goto SelRecsweet
if '%nb%' == 'E' goto SelRecsweet
goto RecOfoxsweet
:RecoveryOfoxR1116sweet
set vRec=R1116
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/sweet/recovery/ofox/R1116/R1116.rar
goto :RecoveryOfoxsweet
:RecoveryOfoxR1211sweet
set vRec=R1211
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/sweet/recovery/ofox/R1211/R1211.rar
goto :RecoveryOfoxsweet
:RecoveryOfoxR1212sweet
set vRec=R1212
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/sweet/recovery/ofox/R1212/R1212.rar
goto :RecoveryOfoxsweet
:RecoveryOfoxR1213sweet
set vRec=R1213
set linkA1=https://raw.githubusercontent.com/digonad4/mieasyrecovery/main/adb/device/sweet/recovery/ofox/R1213/R1213.rar
goto :RecoveryOfoxsweet
:RecoveryOfoxsweet
set OFOXs=adb\device\sweet\recovery\Ofox
title  Mi Easy Recovery Ofox %vRec% 
cls
echo.
echo ------------------------------------------------------------------------
echo   Ofox %vRec%                      Mi Easy Recovery - Device - sweet 
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
echo.
set nb=
set /p "nb=Digite sua opção %UsERNAME% > "
if '%nb%' == '1' goto DownOfoxsweet 
if '%nb%' == '2' goto BootInOfoxsweet
if '%nb%' == '3' goto ExcludeOfoxsweet
if '%nb%' == 'E' goto RecOfoxsweet
if '%nb%' == 'e' goto RecOfoxsweet
if '%nb%' == 't' goto Exclude
goto RecoveryOfoxsweet
:ExcludeOfoxsweet
cls
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.rar" ( cls ) else ( goto AvisoDownOfoxsweet )
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
goto RecoveryOfoxsweet
:DownOfoxAvisosweet
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
goto RecoveryOfoxsweet
:AvisoDownOfoxsweet
cls 
echo.
echo.
echo.
echo     Baixe o arquivo.
echo.
echo.
echo.
timeout 5 > nul
goto RecoveryOfoxsweet
:DownOfoxsweet 
cls 
::: Função que baixa e cria a pasta responsável por armazenar o arquivo dentro do script.
mkdir %OFOXs%\%vRec%\
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.rar" ( goto DownOfoxAvisosweet ) else (  cls )
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
:DownOfoxYessweet
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
:ExtractRecoveryOfoxsweet
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.img" ( goto AvisoFlashOfoxsweet ) else (  cls )
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
goto RecoveryOfoxsweet
:BootInOfoxsweet
cls
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.rar" ( goto Ver2Ofoxsweet ) else ( goto AvisoDownOfoxsweet )
:Ver2Ofoxsweet
if exist "%cd%\%OFOXs%\%vRec%\%vRec%.img" ( cls ) else ( goto ExtractRecoveryOfoxsweet )
:BootOnOfoxsweet
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
goto RecoveryOfoxsweet
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:: Download Adb 
:Adb 
title 	Baixando ADB para que o  Mi Easy Recovery funcione corretamente.
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
set server=https://github.com/digonad4/mieasyrecovery/raw/main/
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
echo 	Baixei os arquivos necessarios para que eu funcione corretamente
echo.
echo		Espere ! Ou tecle algo !
echo.
echo.
echo.
timeout 15 > nul
goto SelDevice