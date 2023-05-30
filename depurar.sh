#!/bin/bash
# script para depurar archivos por fecha
#
#

# Pedir al usuario que introduzca la ruta de los archivos a depurar
echo "Introduce la ruta de los archivos a depurar: "
read ruta

# Pedir al usuario que introduzca el número de meses a considerar
echo "Introduce el número de meses para considerar: "
read meses

# Calcular la fecha límite a partir de la cual eliminar los archivos
fecha_limite=$(date --date="$meses months ago" +%Y%m%d)

# Depurar los archivos de la ruta indicada
find $ruta -type f -mtime +$meses -exec rm {} \;
echo "Los archivos con fecha anterior a $fecha_limite han sido eliminados."