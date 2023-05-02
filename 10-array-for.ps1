$nombre = ("jhon","peter","jair","pablo")

foreach($row in $nombre){
    if($row -like "*j*"){
        Write-Host "Nombres con 'j' :" $row
    }
}