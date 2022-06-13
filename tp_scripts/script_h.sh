#!/bin/bash
#Escribir un script que muestre un menú y haga lo siguiente: 
#i) Mostrar el directorio actual. 
#ii) Pedir un nombre de directorio y, si es correcto, establecerlo como actual. 
#iii) Listar los elementos del directorio actual que sólo sean archivos (sin usar el comando ls). 
#iv) Pedir un nombre de directorio y crearlo. Si no se puede crear, personalizar el error. 
#v) Salir (saludando al usuario que ejecutó el programa). 
#Si se presiona otra tecla, mostrar "Opción incorrecta". 
while true; do
  echo "MENU:"
  echo ""
  echo "1 - Mostrar Directorio Actual"
  echo "2 - Cambiar Directorio Actual"
  echo "3 - Listar Archivos Directorio Actual"
  echo "4 - Crear Directorio"
  echo "5 - Salir"

  read -p "Ingrese una opción: " OPCION

  case "$OPCION" in
    1) mostrar_dir_actual;;
    2) cambiar_dir_actual;;
    3) listar_dir_actual;;
    4) crear_dir;;
    5) salir;;
    *) echo "Opción incorrecta";;
  esac
done
