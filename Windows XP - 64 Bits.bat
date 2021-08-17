@echo off
REM Autor: Jose Conde 
REM Script para crear VM Winwdows XP 64 bits

REM Color CMD
Color 0A

REM Agregamos ruta al PATH
PATH=%PATH%;C:\Program Files\Oracle\VirtualBox

REM Creamos maquina virtual Windows XP 
VboxManage createvm --name "Windows XP x64" --register --ostype "WindowsXP_64"

REM Añadios un Sata
VboxManage storagectl "Windows XP x64" --name "SATA controller" --add sata --controller "IntelAHCI"

REM Creamos Disco Virtual de 10 GB
VboxManage createhd --filename "%HOMEDRIVE%\%HOMEPATH%\VirtualBox\Winwdows XP x64 Bits\WinXP.vdi" --size 10000

REM Agregamos el disco al conector SATA
VboxManage storageattach "Windows XP x64" --storagectl "SATA controller" --port 0 --device 0  --type hdd --medium "%HOMEDRIVE%\%HOMEPATH%\VirtualBox\Winwdows XP x64 Bits\WinXP.vdi"

REM Agregamos un IDE
VboxManage storagectl "Windows XP x64" --name "Controlador IDE" --add ide

REM Asingamos memoria RAM y VRAM
VboxManage modifyvm "Windows XP x64" --memory 2048 --vram 128

REM Optimizamos VM
VboxManage modifyvm "Windows XP x64" --ioapic on

REM Asignamos orden de arranque
VboxManage modifyvm "Windows XP x64" --boot1 disk --boot2 dvd --boot3 none --boot4 none

REM Asignamos RED Adaptatador Puente
VboxManage modifyvm "Windows XP x64" --nic1 bridged 
