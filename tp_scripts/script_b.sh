#!/bin/bash
#Escribir un script que muestre por consola la fecha del sistema cada 2 segundos, 10 veces. 
#!/bash/sh

while :; do
  CURRENTDATE=`date`
  echo "$CURRENTDATE"

  sleep 2
done
