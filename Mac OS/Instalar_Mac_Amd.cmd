@echo off
REM Autor: Jose Conde 
REM Solución MAC para procesadores AMD

REM Color CMD
Color 0A

REM Agregamos ruta al PATH
PATH=%PATH%;C:\Program Files\Oracle\VirtualBox

REM Nombre máquina
set /P nombre= Indica el nombre de tu maquina: 

REM Lineas para error vbox
VBoxManage modifyvm %nombre% --cpu-profile "Intel Xeon X5482 3.20GHz"
VBoxManage modifyvm %nombre% --cpu-profile "Intel Core i7-2635QM"
VBoxManage modifyvm %nombre% --cpu-profile "Intel Core i7-3960X"
VBoxManage modifyvm %nombre% --cpu-profile "Intel Core i5-3570"
VBoxManage modifyvm %nombre% --cpu-profile "Intel Core i7-5600U"
VBoxManage modifyvm %nombre% --cpu-profile "Intel Core i7-6700K"