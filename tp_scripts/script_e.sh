#!/bin/bash
#Escribir un script que reciba como parámetro el path a un archivo y determine si existe o no y qué tipo de archivo es. 

ARCHIVO=$1
if [[ -f "$ARCHIVO" ]]; then
  echo "$ARCHIVO existe"
  TIPO=`file $ARCHIVO`   
  echo "$TIPO"
else
  echo "$ARCHIVO no existe"
fi
