cls
$numero=234
$numero2=234.34
[INT]$numero3=2.234
[FLOAT]$numero2=2.34
[BOOLEAN]$boleano=$true
Write-Host "Imprime solo enteros:" $numero3 "| tipo:" $numero3.GetType().Name
Write-Host "Imprime solo con decimales:" $numero2 "| tipo:" $numero2.GetType().Name
Write-Host "Imprime booleano:" $boleano "| tipo:" $boleano.GetType().Name