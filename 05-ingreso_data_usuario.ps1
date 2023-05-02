#Ingreso de datos del usuario

cls

$nombre = Read-Host -Prompt "Ingresa el nombre"
echo "El nombre ingresado es:" $nombre
Write-Host "Bienvenido" $nombre

[FLOAT]$numero = Read-Host "Ingrese un Numero"
$suma = $numero + 20
Write-Host "Le sumamos +20 y es: " $suma
