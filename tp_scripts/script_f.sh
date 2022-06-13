#!/bin/bash
#Escribir un script que lea 2 números enteros desde el teclado y determine si son iguales, o cuál es mayor que el otro (hacerlo con al menos una función). 

es_entero() {
  [[ $1 = +([[:digit:]]) ]]
}

es_mayor() {
  (($1 > $2))
}

read -p "Ingrese el primer número: " NUM1

if ! es_entero "$NUM1"; then
  echo "$NUM1 no es un número entero"
  exit 0
fi

read -p "Ingrese el segundo número: " NUM2

if ! es_entero "$NUM2"; then
  echo "$NUM2 no es un número entero"
  exit 0
fi

if es_mayor "$NUM1" "$NUM2"; then
    echo "El primer número ($NUM1) es mayor que el segundo número ($NUM2)"
elif es_mayor "$NUM2" "$NUM1"; then
    echo "El segundo número ($NUM2) es mayor que el primero número ($NUM1)"
else
    echo "El primer número ($NUM1) es igual al segundo número ($NUM2)"
fi
