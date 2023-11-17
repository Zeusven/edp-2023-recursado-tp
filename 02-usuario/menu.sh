#!/bin/bash


PS3='Elija> '
echo "Hola soy el Menu del TP, que quiere hacer?"
select opcion in "Clasificar Archivos" "Monitorear Sistema" "Analizar Textos"
do
 [ -e "$opcion" ] && echo "Elegir opcion valida!" && continue
 [ $REPLY == 1 ] && clasificar  && continue
 [ $REPLY == 2 ] && echo "Eligio monitorear el sistema!" && continue
 [ $REPLY == 3 ] && echo "Eligio analizar textos!" && continue
 [ $REPLY == 4 ] && echo "Eligio salir!" && break
 echo "opcion elegida: " $opcion
 done

 exit 0

