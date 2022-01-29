@echo off
chcp 65001
cls
set server=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/
set core=color 03
mode 120,35
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
goto :corolidu
:cortexto
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
:corolidu
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
:::::: Altere o link comforme necessidade 
set server_stock=https://bigota.d.miui.com/V12.5.4.0.RKGMIXM/mojito_global_images_V12.5.4.0.RKGMIXM_20211029.0000.00_11.0_global_5b8d27710e.tgz
:::::: Mantenha o padrão de controle de versão da stock rom
:::::: 12.5.4.0
:StockRom
title Menu Stock ROM v 12.5.4.0 OFFICIAL
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) DOWNLOAD DA STOCK (v12.5.4.0)         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DESCOMPACTAR ARQUIVO                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) FLASH DA STOCK ROM                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVOS                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) ABRIR PASTA DO ARQUIVO STOCK ROM      │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT System                         │                                                        │
echo      │      └───────────────────────────────────────────┘            ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
 if exist "%cd%\adb\stock\Mojito.tgz" ( call :cortexto 0a "Ok, encontrei o arquivo da rom.  ") else ( call :cortexto 0c "Voce ainda nao baixou a rom. ")
echo.
if exist "%cd%\adb\7Zip\"              ( call :cortexto 0a "Ok, encontrei a pasta 7Zip, preciso dela para extrair a rom.  ") else ( call :cortexto 0c "Parece que esta faltando a pasta 7Zip ")
echo.
if exist "%cd%\adb\stock\super.img"   ( call :cortexto 0a "Ok, parece que voce ja extraiu a rom.  ") else ( call :cortexto 0c "Faca a extracao da rom ! ")
echo.
echo.
set nb=
set /p "nb=DIGITE A OPÇÃO QUE DESEJA > "

 if '%nb%' == '1' goto DownloadStock
 if '%nb%' == '2' goto ExtrairStock
 if '%nb%' == '3' goto FlashStock
 if '%nb%' == '4' goto VerificaStock
 if '%nb%' == '5' goto OpenStock
 if '%nb%' == '6' goto RebootStock
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto StockRom
:RebootStock
cls
%fastboot% reboot
goto StockRom
:DownloadStock
 if exist "%cd%\adb\stock\Mojito.tgz" ( echo MsgBox "Deixa de ser besta, voce ja baixou a rom, agora vc precisa extrair ela.",vbInformation,"Presta atencao. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom ) else ( echo. )
title Baixando a stock rom 12.5.4.0, aguarde !
color 30

cls
echo.                          Atualmente estou baixando a rom, agora vai demorar um pouco !
echo.                                      Mas quando terminar, vou te avisar !
echo.
mkdir "%cd%\adb\stock\"
timeout 3 > nul
powershell -command "& {&'Invoke-WebRequest' -Uri '%server_stock%' -OutFile '%cd%\adb\stock\Mojito.tgz'}"
cls
 if exist "%cd%\adb\stock\Mojito.tgz" ( echo . ) else ( echo MsgBox "Epa, alguma coisa deu errado, o arquivo nao foi baixado !",16,"Presta atencao. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom )
cls
echo MsgBox "Agora voce precisa extrair a stock rom.                                       Aguardo voce pressionar alguma tecla para que eu va para a extracao da stock rom.",16,"Parece que o download deu certo. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo           Parece que seu download deu certo, tecle algo para que eu volte ao menu de opções da stock rom.
echo.
echo.
goto StockRom
:: Arquivos necessários para extração da stock rom.
:7zip
title Baixando os arquivos que farão a extração da rom stock !
color 30
cls
echo.	
echo.				Baixando arquivos necessários para extração!
echo.							Aguarde !
echo.
timeout 3 > nul
mkdir adb\7Zip\
mkdir adb\7Zip\Far\
mkdir adb\7Zip\x64\
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/7za.exe' -OutFile '%cd%\adb\7Zip\7za.exe'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/7za.dll' -OutFile '%cd%\adb\7Zip\7za.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/7zxa.dll' -OutFile '%cd%\adb\7Zip\7zxa.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/x64/7za.exe' -OutFile '%cd%\adb\7Zip\X64\7za.exe'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/x64/7za.dll' -OutFile '%cd%\adb\7Zip\X64\7za.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/x64/7zxa.dll' -OutFile '%cd%\adb\7Zip\X64\7zxa.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipEng.hlf' -OutFile '%cd%\adb\7Zip\Far\7-ZipEng.hlf'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipFar.dll' -OutFile '%cd%\adb\7Zip\Far\7-ZipFar.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipFar64.dll' -OutFile '%cd%\adb\7Zip\Far\7-ZipFar64.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipRus.hlf' -OutFile '%cd%\adb\7Zip\Far\7-ZipRus.hlf'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7zToFar.ini' -OutFile '%cd%\adb\7Zip\Far\7zToFar.ini'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/far7z.reg' -OutFile '%cd%\adb\7Zip\Far\far7z.reg'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/far7z.txt' -OutFile '%cd%\adb\7Zip\Far\far7z.txt'}"
goto StockRom
:: Extrai stock 
:ExtrairStock
title Extraindo a stock rom 
%core%
 if exist "%cd%\adb\stock\super.img" ( echo MsgBox "Deixa de ser besta, voce ja extraiu a rom, agora vc pode flashear ela.",vbInformation,"Presta atencao. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom ) else ( echo. )
if exist "%cd%\adb\7Zip\"     (echo.) else ( goto 7zip )
if exist "%cd%\adb\7Zip\Far\" (echo.) else ( goto 7zip )
if exist "%cd%\adb\7Zip\x64\" (echo.) else ( goto 7zip )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando extração da stock rom Mojito                                                         │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
"%cd%\adb\7Zip\7za.exe" e -o"%cd%\adb\stock" -bt -aoa "%cd%\adb\stock\Mojito.tgz"
"%cd%\adb\7Zip\7za.exe" e -o"%cd%\adb\stock" -bt -aoa "%cd%\adb\stock\Mojito.tar"
echo.
echo Tecle algo para voltar, sem você não sou ninguém...
goto StockRom
:: Flash da stock
:VerificaStock
title Verificando existencia dos arquivos da rom !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Verificando arquivos da stock rom V12.5.4.0                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
 if exist "%cd%\adb\stock\"              ( call :cortexto 0a " Ok, a pasta foi criada. ")        else ( call :cortexto 0c " Ta faltando a pasta da rom. ")
 echo.
 if exist "%cd%\adb\stock\super.img"    ( call :cortexto 0a " Ok, o super.IMG esta aqui.")     else ( call :cortexto 0c " Cade o super.IMG")
 echo.
 if exist "%cd%\adb\stock\vendor.img"    ( call :cortexto 0a " Ok, o VENDOR.IMG esta aqui. ")    else ( call :cortexto 0c " Cade o VENDOR.IMG ")
 echo.
 if exist "%cd%\adb\stock\persist.img"   ( call :cortexto 0a " Ok, o PERSIST.img esta aqui. ")   else ( call :cortexto 0c " Cade o PERSIST.IMG  ")
 echo.
 if exist "%cd%\adb\stock\bluetooth.img" ( call :cortexto 0a " Ok, o BLUETOOTH.IMG esta aqui. ") else ( call :cortexto 0c " Cade o BLUETOOTH.IMG   ")
 echo.
 if exist "%cd%\adb\stock\devcfg.img"    ( call :cortexto 0a " Ok, o DEVCFG.IMG esta aqui. ")    else ( call :cortexto 0c " Cade o DEVCFG.IMG ")
 echo.
 if exist "%cd%\adb\stock\dsp.img"       ( call :cortexto 0a " Ok, o DSP.IMG esta aqui. ")       else ( call :cortexto 0c " Cade o DSP.IMG ")
 echo.
 if exist "%cd%\adb\stock\modem.img"     ( call :cortexto 0a " Ok, o MODEM.IMG esta aqui. ")     else ( call :cortexto 0c " Cade o MODEM.IMG ")
 echo.
 if exist "%cd%\adb\stock\xbl.img"       ( call :cortexto 0a " Ok, o XBL.IMG esta aqui. ")       else ( call :cortexto 0c " Cade o XBL.IMG ")
 echo.
 if exist "%cd%\adb\stock\pmic.img"      ( call :cortexto 0a " Ok, o PMIC.IMG esta aqui. ")      else ( call :cortexto 0c " Cade o PMIC.IMG ")
 echo.
 if exist "%cd%\adb\stock\rpm.img"       ( call :cortexto 0a " Ok, o RPM.IMG esta aqui. ")      else ( call :cortexto 0c " Cade o RPM.IMG  ")
 echo.
 if exist "%cd%\adb\stock\tz.img"        ( call :cortexto 0a " Ok, o TZ.IMG esta aqui. ")      else ( call :cortexto 0c " Cade o TZ.IMG  ")
 echo.
 if exist "%cd%\adb\stock\boot.img"        ( call :cortexto 0a " Ok, o BOOT.IMG esta aqui. ")      else ( call :cortexto 0c " Cade o BOOT.IMG  ")
echo.
echo.
echo.
echo.
call :cortexto 06 "Pressione qualquer tecla para voltar para o menu de instalacao da stock rom."
echo.
goto StockRom
:: Flash da stock rom Mojito  
:FlashStock 
title Fazendo a instalação da stock rom através do Fastboot
%core%
if exist "%cd%\adb\stock\" ( echo . ) else ( goto AvisoDownloadStock )
if exist "%cd%\adb\stock\super.img" ( echo . ) else ( goto AvisoDownloadStock)
cls
echo.
echo.
cls
%fastboot% flash dsp_a adb\stock\dsp.img
%fastboot% flash dsp_b adb\stock\dsp.img
%fastboot% flash xbl_config_a adb\stock\xbl_config.img
%fastboot% flash xbl_config_b adb\stock\xbl_config.img
%fastboot% flash boot_a adb\stock\boot.img
%fastboot% flash boot_b adb\stock\boot.img
%fastboot% flash modem_a adb\stock\modem.img
%fastboot% flash modem_b adb\stock\modem.img
%fastboot% flash vbmeta_system_a adb\stock\vbmeta_system.img
%fastboot% flash vbmeta_system_b adb\stock\vbmeta_system.img
%fastboot% flash tz_a adb\stock\tz.img
%fastboot% flash tz_b adb\stock\tz.img
%fastboot% flash vbmeta_a adb\stock\vbmeta.img
%fastboot% flash vbmeta_b adb\stock\vbmeta.img
%fastboot% flash bluetooth_a adb\stock\bluetooth.img
%fastboot% flash bluetooth_b adb\stock\bluetooth.img
%fastboot% flash abl_a adb\stock\abl.img
%fastboot% flash abl_b adb\stock\abl.img
%fastboot% flash dtbo_a adb\stock\dtbo.img
%fastboot% flash dtbo_b adb\stock\dtbo.img
%fastboot% flash vendor_boot_a adb\stock\vendor_boot.img
%fastboot% flash vendor_boot_b adb\stock\vendor_boot.img
%fastboot% flash keymaster_a adb\stock\keymaster.img
%fastboot% flash keymaster_b adb\stock\keymaster.img
%fastboot% flash uefisecapp_a adb\stock\uefisecapp.img
%fastboot% flash uefisecapp_b adb\stock\uefisecapp.img
%fastboot% flash qupfw_a adb\stock\qupfw.img
%fastboot% flash qupfw_b adb\stock\qupfw.img
%fastboot% flash xbl_a adb\stock\xbl.img
%fastboot% flash xbl_b adb\stock\xbl.img
%fastboot% flash cmnlib_a adb\stock\cmnlib.img
%fastboot% flash cmnlib_b adb\stock\cmnlib.img
%fastboot% flash cmnlib64_a adb\stock\cmnlib64.img
%fastboot% flash cmnlib64_b adb\stock\cmnlib64.img
%fastboot% flash devcfg_a adb\stock\devcfg.img
%fastboot% flash devcfg_b adb\stock\devcfg.img
%fastboot% flash hyp_a adb\stock\hyp.img
%fastboot% flash hyp_b adb\stock\hyp.img
%fastboot% flash imagefv_a adb\stock\imagefv.img
%fastboot% flash imagefv_b adb\stock\imagefv.img
%fastboot% flash aop_a adb\stock\aop.img
%fastboot% flash aop_b adb\stock\aop.img
%fastboot% flash cust adb\stock\cust.img
%fastboot% flash super adb\stock\super.img
%fastboot% erase metadata
%fastboot% set_active a
%fastboot% reboot 
cls
title Deu certo !
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Deu certo, parece que vc conseguiu, parabéns                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause > nul
goto StockRom
:: Erro no flash da stock rom 
:FlashStockError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Tecle qualquer tecla para voltar para o Menu da stock rom !
echo.
echo.
echo.
echo.
goto StockRom
:: Aviso de que é necessario baixar a stock rom antes de qualquer coisa
:AvisoDownloadStock
title Tecle algo para avançar !
%core%
cls
echo MsgBox "Voce precisa baixar a stock rom.                                               Aguardo voce pressionar alguma tecla para que eu va para o download da stock rom.",vbInformation,"Epa, perai. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo.
echo.
echo                                   Tecla alguma coisa ai, vou baixar a stock rom pra você.
echo.
echo.
echo.
echo.
goto DownloadStock