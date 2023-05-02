# En un vecindario  quieren ganar el reto de la ciudad mas poblada de la historia, para eso deben de tener mas de 1000 habitantes
# El numero actual de habitantes en la ciudad es de 950, si sobrepasan e lrequisito ganarian el premio a la ciudad mas poblada, de 
# lo contrario no ganarian nada y lo intentarian el proximo año

cls

[INT]$habitantes = 950 
[INT]$habitantes_nuevo = Read-Host "Ingrese la cantidad de nuevos habitantes para este año" 

$total = $habitantes + $habitantes_nuevo
Write-Host "Llegaron a un total de:" $total

if($total -gt 1000 ){
    echo "Ganaron el premio a la ciudad mas poblada"
}else{
    echo "No ganaron nada (deben de ser mas de 1000 habiantes..) intenten el proximo año"
}
 