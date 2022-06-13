#!/bin/bash
#Escribir un script que muestre por consola los números del 1 al 5. 

i=1
while [ $i -le 5 ]
do
    echo $i
    i=$(($i+1))
done
