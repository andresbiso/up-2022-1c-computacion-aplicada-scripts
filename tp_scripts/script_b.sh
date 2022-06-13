#!/bin/bash
#Escribir un script que muestre por consola la fecha del sistema cada 2 segundos, 10 veces. 
#!/bash/sh

for i in {0..9}
do
  echo "$(date)"
  sleep 2
done
