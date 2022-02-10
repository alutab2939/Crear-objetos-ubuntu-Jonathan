#!/bin/bash
while IFS=: read -r col1 col2
do
        echo "I got:$col1"
        NOMBRE:$col1
        UO:$col2

        echo -n "Añadiendo grupo $col1 a $col2..."
        samba-tool group add $col1 --groupou=ou=$col2 --group-type=Security --group-scope=Global
        echo "Grupo $col1 creado correctamente y añadido a $col2"

done < $1


