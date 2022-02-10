#!/bin/bash
while IFS=: read -r col1
do
        echo "I got $col1"
        NOMBRE=$col1

        echo -n "Añadiendo equipo $col1..."
        samba-tool computer create $col1
        echo "Equipo $col1 añadido correctamente"

done < $1
