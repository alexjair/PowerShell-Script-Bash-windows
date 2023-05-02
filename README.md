# PowerShell-Script-Bash-Windows
🖥 Powershell desde 0, crear scripts y herramientas para administrar, brindar seguridad, ejemplos en *.ps1

Email: alexjair@gmail.com
by Alexander Jair Rojas Paria

-------------
<!-- Output copied to clipboard! -->

<!-- You have some errors, warnings, or alerts. If you are using reckless mode, turn it off to see inline alerts.
* ERRORs: 0
* WARNINGs: 0
* ALERTS: 17 -->


# **Powershell para Administración de Servidores y Seguridad**


# **Saber {User Administrador}**

Verificamos

**whoami**

Ver si somos Admin

**net user ‘{--user-name--}’**

**net user ‘alexjair’**


![alt_text](images/image1.png "image_tooltip")



# **Install SSH**

info: **https://www.youtube.com/watch?v=Zin9xhU5P58&ab_channel=ITProTV**

Verificamos si tenemos SSH

**ssh**

Ver si tenemos instalado los serv. cliente y server del ssh


```
Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
```



![alt_text](images/image2.png "image_tooltip")


Intalacion de Cliente


```
# Install the OpenSSH Client
get-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
```



![alt_text](images/image3.png "image_tooltip")



```
# Install the OpenSSH Server
get-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
```



![alt_text](images/image4.png "image_tooltip")


verificamos con ssh

**ssh**

vemos nuestra ip

**ipconfig**

verificamos los servicios:

**get -service -name ssh***


![alt_text](images/image5.png "image_tooltip")


Vemos que los servicios esta detenidos


```
# OPTIONAL but recommended:
Set-Service -Name sshd -StartupType 'Automatic'
# Start the sshd service
Start-Service sshd
verificamos los servicios 
```


**get -service -name ssh***


![alt_text](images/image6.png "image_tooltip")


El servicio esta activo


# **Habilitar RUN script**

PS C:\Windows\system32> **Get-ExecutionPolicy -List**

PS C:\Windows\system32> **Set-ExecutionPolicy RemoteSigned -Scope CurrentUser**

Cambio de directiva de ejecución

https:/go.microsoft.com/fwlink/?LinkID=135170. ¿Quieres cambiar la directiva de ejecución?

[S] Sí  [O] Sí a todo  [N] No  [T] No a todo  [U] Suspender  [?] Ayuda (el valor predeterminado es "N"): **S**

PS C:\Windows\system32> **Get-ExecutionPolicy -List**

CurrentUser    RemoteSigned


![alt_text](images/image7.png "image_tooltip")



# **RUN script**

Llamada a la bash

**./{--nombre-bash-ps1--}**


# **Seguridad & Administracion Servidor**


## **Ver Usuarios**

Información de usuarios locales

**get-command *localuser***

Obtener la información de usuarios

**get-help {-comando--}**

**get-localuser**


![alt_text](images/image8.png "image_tooltip")


detalle de informacion de usuario

**get-localuser -name {--name-user--} | fl**

**get-localuser -name usuario | fl**


![alt_text](images/image9.png "image_tooltip")



## **Crear Usuarios**

ver

revisamos la ayuda del comando

**get-help new-localuser**

Creamos un usuario sin contraseña

**new-localuser prueba -nopassword**


![alt_text](images/image10.png "image_tooltip")


Creamos otra cuenta con contraseña fuerte

Primero generamos la contraseña.

**$password = convertto-securestring “esiis123” -asplaintext -force**

Creamos el usuario con la clave

**new-localuser prueba2 -password $password**


![alt_text](images/image11.png "image_tooltip")



## **Modificar Usuario**

ver, es para modificar usuario

**get-help set-localuser**

Mod

**set-localuser prueba -fullname “Esta es una cuenta de prueba para prueba”**

**set-localuser prueba -description “Esta es una cuenta de prueba para prueba”**

**set-localuser -name prueba -password (convertto-securestring “pruebita” -asplaintext -force)**

revisar

**get-localuser -name prueba | fl**


![alt_text](images/image12.png "image_tooltip")



## **Deshabilitar | Renombrar Usuario**

ver, los usuarios locales

**get-localuser**

deshabilitar user

**get-help disable-localuser**

**disable-localuser prueba **


![alt_text](images/image13.png "image_tooltip")


habilita user

**enabled-localuser prueba**

Renombrar Usuario

**rename-localuser prueba -newname “{--NAME-USER--}”**

**rename-localuser prueba -newname “prueba2”**

verificar

**get-localuser**


## **Eliminar Usuario**

ver 

**get-localuser**

eliminar usuario

**remove-localuser -confirm prueba**

ver

**get-localuser**


# 
![alt_text](images/image14.png "image_tooltip")



# **Seguridad Carpetas Compartidas**


## **Ver Crear Carpeta**

Ver

**get-smbshare**


![alt_text](images/image15.png "image_tooltip")


Compartir

**new-item d:/compartir -itemtype directory**

**new-smbshare -path d:/compartir**



* cmdlet New-SmbShare en la posición 1 de la canalización de comandos

    Proporcione valores para los parámetros siguientes: **S**


Permisos

**get-smbshareaccess -name compartir**

ver

**get-smbshare**


## **Permisos Carpeta**

crear un usuario prueba

**new-localuser prueba -nopassword**

**new-item d:/compartido -itemtype directory**

**new-smbshare -path d:/compartido -name compartido -fullaccess prueba -readaccess prueba2**

**new-smbshare -path d:/compartido -name compartido -fullaccess prueba -readacces prueba2**

ver estado de compartido

**get-smbshareaccess -name compartido | fl**


![alt_text](images/image16.png "image_tooltip")



## **Editar Carpeta**

ver

**get-smbshare -name compartido | fl**

ver con mas detalle

**get-smbshare -name compartido | fl ***

cambiar la descripción a la carpeta

**Set-Smbshare -name compartito -Description "Esta carpeta esta destinada para publico en general"**

Remover el usuario a la carpeta compartida

**revoke-smbshareaccess -name compartido -accountname prueba -force**


![alt_text](images/image17.png "image_tooltip")



# **Programar**


## **Variables**

**cls**

$numero=234

$numero2=234.34

[INT]$numero3=2.234

[FLOAT]$numero2=2.34

[BOOLEAN]$boleano=$true

Write-Host "Imprime solo enteros:" $numero3 "| tipo:" $numero3.GetType().Name

Write-Host "Imprime solo con decimales:" $numero2 "| tipo:" $numero2.GetType().Name

Write-Host "Imprime booleano:" $boleano "| tipo:" $boleano.GetType().Name


## **Ope. Aritméticos**

**# aritmetico: / * - + **

**# mod: **

**# exponenciacion: ** | 100 ** 10 | 90 ** 3**

**# DivisionEntera: // | 40 // 2 = 20 | 40 // 5 = 5 , da como resultado solo la parte entera.**

**cls**

$var1=30

$var2=20  

$suma= $var1+$var2

Write-Host "La suma es:" $suma

$resta= $var1-$var2

Write-Host "La resta (a-b) es:" $resta

$multi= $var1*$var2

Write-Host "La multiplicación (a*b) es:" $multi

$divi= $var1/$var2

Write-Host "La división (a/b) es:" $divi
