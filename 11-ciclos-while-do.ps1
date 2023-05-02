$a = 1 

# do - while

DO
{

 "Comenzo en $a"
 write-host "Se incrementa a " $a
 $a++
 "Ahora `$a is $a `n"
 
} While ($a -le 5)

# for

for($i = 0; $i -le 10; $i++){
    Write-Host "Su porcentaje de carga debe de llegar a 10, estado del % es: $i %"
}