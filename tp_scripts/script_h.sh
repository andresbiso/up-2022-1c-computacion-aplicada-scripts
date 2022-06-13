#!/bin/bash
#Escribir un script que muestre un menú y haga lo siguiente: 
#i) Mostrar el directorio actual. 
#ii) Pedir un nombre de directorio y, si es correcto, establecerlo como actual. 
#iii) Listar los elementos del directorio actual que sólo sean archivos (sin usar el comando ls). 
#iv) Pedir un nombre de directorio y crearlo. Si no se puede crear, personalizar el error. 
#v) Salir (saludando al usuario que ejecutó el programa). 
#Si se presiona otra tecla, mostrar "Opción incorrecta". 
# Aclaración: correr script cómo ". nombrescript" para que se puedan visualizar los cambios ya que, de esa manera, no se ejecuta en una child shell.

mostrar_dir_actual() {
  echo "Directorio Actual: " 
  echo $PWD 
}

cambiar_dir_actual() {
  read -p "Ingrese un directorio: " DIRECTORIO
  if [[ -d "$DIRECTORIO" ]]; then
    cd "$DIRECTORIO"
    mostrar_dir_actual
  else
    echo "El directorio ingresado no existe o es inválido"
  fi
}

listar_dir_actual() {
  find . -maxdepth 1 -type f
}

crear_dir() {
  read -p "Ingrese el nombre del nuevo directorio: " DIRECTORIO
  if [ ! -d "$DIRECTORIO" ]; then
    mkdir -p "$DIRECTORIO"
  else
    echo "El directorio elegido ya existe"
  fi
}

salir() {
  echo "¡Hasta luego $LOGNAME!"
}

while true; do
  echo "MENU:"
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
    5) salir;return;;
    *) echo "Opción incorrecta";;
  esac
done
