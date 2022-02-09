#!/bin/bash
while IFS=: read -r col1 col2 col3
do
        echo "I got:$col1"
        NOMBRE=$col1
        DC1=$col2
        DC2=$col3

        echo -n "Creando UO" $col1
        sudo samba-tool ou create OU=$col1,DC=$col2,DC=$col3
        echo "UO $col1 creada correctamente"

done < $1
