$lista = @{
    "Tataina" = 30;
    "Melvin" = 20;
    "Jair" = 10;
    "Pedro" = 5;
}

$lista.GetEnumerator() | ForEach-Object{
    $msj = "{0} tiene {1} años de edad" -f $_.Key, $_.Value;
    Write-Host $msj;
}