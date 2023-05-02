cls

[INT]$num = read-Host "Ingrese numero:"

if($num -eq 10){
    Write-Host "Tu numero es 10"
}elseif($num -eq 9){
    Write-Host "Tu numero es 9"
}elseif($num -eq 8){
    Write-Host "Tu numero es 8"
}elseif($num -eq 7){
    Write-Host "Tu numero es 7"
}elseif($num -eq 6){
    Write-Host "Tu numero es 6"
}elseif($num -eq 5){
    Write-Host "Tu numero es 5"
}else{
    Write-Host "Es un numero desconocido"
}