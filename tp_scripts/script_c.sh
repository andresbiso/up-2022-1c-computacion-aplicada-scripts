#!/bin/bash
#c) Escribir un script que, al ejecutarlo como root, reinicie el equipo después de 1 minuto. Si el usuario ejecutor no es root, informar y finalizar el programa

if [ "$EUID" == 0 ]; then
  shutdown -r +1 
else
  echo "El usuario no es root"
fi
