@echo off
REM Autor: Jose Conde 
REM Solución MAC y VBox Versiones nuevas 

REM Color CMD
Color 0A

REM Agregamos ruta al PATH
PATH=%PATH%;"C:\Program Files\Oracle\VirtualBox"

REM Nombre máquina
set /P nombre= Indica el nombre de tu maquina: 

REM Solución error
VBoxManage.exe modifyvm %nombre% --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata %nombre% "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata %nombre% "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata %nombre% "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata %nombre% "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata %nombre% "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
VBoxManage setextradata %nombre% "VBoxInternal2/EfiGraphicsResolution" 1280x720