#!/bin/bash
# Escribir un script que recibe 2 parámetros: una cadena de caracteres y el path a un archivo de texto plano. Se deberá buscar dicha cadena dentro del archivo e imprimir por consola "Palabra encontrada" en caso de encontrarla, o "Palabra no encontrada" en caso contrario. Controlar que sea correcta la cantidad de parámetros.

PALABRA=$1
ARCHIVO=$2

if grep -q "$ARCHIVO" "$PALABRA"; then
  echo "Palabra encontrada"
else
  echo "Palabra no encontrada"
fi
