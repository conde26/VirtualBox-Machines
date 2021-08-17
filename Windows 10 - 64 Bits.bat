@echo off
REM Autor: Jose Conde 
REM Script para crear VM Winwdows 10 64 bits

REM Color CMD
Color 0A

REM Agregamos ruta al PATH
PATH=%PATH%;C:\Program Files\Oracle\VirtualBox

REM Creamos maquina virtual Windows 10 
VboxManage createvm --name "Windows 10 x64" --register --ostype "Windows10_64"

REM Añadios un Sata
VboxManage storagectl "Windows 10 x64" --name "SATA controller" --add sata --controller "IntelAHCI"

REM Creamos Disco Virtual de 50 GB
VboxManage createhd --filename "%HOMEDRIVE%\%HOMEPATH%\VirtualBox\Winwdows 10 x64 Bits\Win10.vdi" --size 50000

REM Agregamos el disco al conector SATA
VboxManage storageattach "Windows 10 x64" --storagectl "SATA controller" --port 0 --device 0  --type hdd --medium "%HOMEDRIVE%\%HOMEPATH%\VirtualBox\Winwdows 10 x64 Bits\Win10.vdi"

REM Agregamos un IDE
VboxManage storagectl "Windows 10 x64" --name "Controlador IDE" --add ide

REM Asingamos memoria RAM y VRAM
VboxManage modifyvm "Windows 10 x64" --memory 4096 --vram 128

REM Optimizamos VM
VboxManage modifyvm "Windows 10 x64" --ioapic on

REM Asignamos orden de arranque
VboxManage modifyvm "Windows 10 x64" --boot1 disk --boot2 dvd --boot3 none --boot4 none

REM Asignamos RED Adaptatador Puente
VboxManage modifyvm "Windows 10 x64" --nic1 bridged 
