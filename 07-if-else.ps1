#IF - ELSE
#
# if( ){
#
# }else{
#
# }

[INT]$nota=Read-Host "Ingrese la nota del alumno:" 

if($nota -gt 8 ){
    echo "Usted puede pasar de año"
}else{
    echo "Usted va a repetir el año"
}
 