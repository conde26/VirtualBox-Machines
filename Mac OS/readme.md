# Instalación de MAC en VirtualBox
## Autor: Jose Conde 


Cuando intentamos instalar MAC en virtualbox, no consigue arrancar la instalación, para solucionar esto, debemos ejecutar una serie de comandos, para modificar
una serie de atributos y así podamos instalar MacOS. Este repositorio deje 3 scripts, diferentes, que son: 

### Para equipos con AMD
Para solucionar este **error** en los ordenadores de amd usaremos el siguiente script
```cmd
Instalar_Mac_Amd.cmd
```

### Para equipo Intel Moderno
Para solucionar este **error** en los ordenadores de intel, con versión de vbox superior a la 4 usaremos el siguiente script
```cmd
Instalar_Mac_Intel+Amd_Nuevas.cmd
```
### Para equipo Intel Antiguo
Para solucionar este **error** en los ordenadores de intel, con versión de vbox inferior a la 4 usaremos el siguiente script
```cmd
Instalar_Mac_Intel+Amd_Viejas.cmd
```
### Puedes utilizar ambos scripts solo afectan a la máquina virtual
