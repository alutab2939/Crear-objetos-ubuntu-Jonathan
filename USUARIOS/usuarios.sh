#!/bin/bash
while IFS=: read -r col1 col2 col3 col4 col5 col6 col7 col8
do
        echo "I got:$col1|$col2"
        NOMBRE=$col1
        APELLIDOS=$col2
        LOGIN=$col3
        PASSWORD=$col4
        DEPARTAMENTO=$col5
        EMAIL=$col6
        GRUPO=$col7
        UO=$col8

        echo -n "Añadiendo usuario $col3..."
        samba-tool user create $col3 $col4 --must-change-at-next-login --userou=ou=$col8 --home-directory=/home/$col3 --given-name=$col1 --surname=$col2 --mail=$col6 --department=$col5 --login-shell=/bin/bash
        samba-tool group addmembers $col7 $col3
        echo "Usuario $col3 creado correctamente"

done < $1
