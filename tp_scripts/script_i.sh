#!/bin/bash
#Escribir un script que reciba como parámetro una cadena de caracteres y determinar si es palíndromo o no.

es_palindromo() {
  CADENA=$1
  LARGO=$((${#CADENA} - 1))

  for ((i=0; i <= LARGO; i++)); do
    # ${CADENA:i:1} obtengo el caracter en esa posición
    # ${CADENA:LARGO-i:1} obtengo el caracter en misma posición pero de la cadena invertida
    if [[ ${CADENA:i:1} != ${CADENA:LARGO-i:1} ]]; then
      return 1
    fi
  done
  return 0
}

# Elimino espacios en blanco de la cadena ingresada
CADENA=`echo ${1//[[:blank:]]/}`
if es_palindromo $CADENA; then 
  echo "La cadena de caracteres es un palíndromo" 
else
  echo "La cadena de caracteres no es un palíndromo"
fi
