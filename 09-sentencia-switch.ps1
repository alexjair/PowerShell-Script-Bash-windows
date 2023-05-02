cls

echo "*********[ MENU ] **********"
echo "[1] - Usted ingreso 1"
echo "[2] - Usted ingreso 2"
echo "[3] - Usted ingreso 3"
echo "[4] - Usted ingreso 4"
echo "[5] - Usted ingreso 5"

[int]$opcion = Read-Host "Ingrese la opcion"

switch($opcion){
   1 { echo "te fuistes por la opcion -> " $opcion }
   2 { echo "te fuistes por la opcion -> " $opcion }
   3 { echo "te fuistes por la opcion -> " $opcion }
   4 { echo "te fuistes por la opcion -> " $opcion }
   5 { echo "te fuistes por la opcion -> " $opcion }
   default { echo "Opcion desconocida." }
}
