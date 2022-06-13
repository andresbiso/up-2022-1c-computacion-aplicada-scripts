#!/bin/bash
# Escribir un script que reciba 2 números enteros como parámetro y determinar si son iguales, o cuál es mayor que el otro (hacerlo con al menos una función).

es_entero() {
  [[ $1 = +([[:digit:]]) ]]
}

es_mayor() {
  (($1 > $2))
}

if [ "$#" -ne 2 ]; then
  echo "Debe ingresar dos números para continuar"
  exit 0
fi

if ! es_entero "$1"; then
  echo "$1 no es un número entero"
  exit 0
fi

if ! es_entero "$2"; then
  echo "$2 no es un número entero"
  exit 0
fi

if es_mayor "$1" "$2"; then
    echo "El primer número ($1) es mayor que el segundo número ($2)"
elif es_mayor "$2" "$1"; then
    echo "El segundo número ($2) es mayor que el primero número ($1)"
else
    echo "El primer número ($1) es igual al segundo número ($2)"
fi
