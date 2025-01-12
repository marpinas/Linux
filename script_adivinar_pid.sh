#!/bin/bash
echo "Ejemplo para adivinar el PID (identificador de proceso de este propio script). Te irá guiando si es mayor o menor y el número de intentos tras adivinarlo"

read -p "Introduce un número: " NUM

CONT=1;

while [ $NUM -ne $$ ]; then
	if [ $NUM -gt $$ ]; then
		echo $NUM es MAYOR que el PID
	else
		echo $NUM es MENOR que el PID
	fi
	read -p "Introduce otro número: " NUM
	CONT=$(($CONT-1))
done

echo "Has necesitado $CONT intentos para adivinar el PID $$"
