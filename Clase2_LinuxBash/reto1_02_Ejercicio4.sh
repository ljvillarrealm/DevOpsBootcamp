#!/bin/bash
clear
echo "*** INICIA LA EJECUCION ***"
echo ""

echo "Creando el directorio..."
mkdir -vp ~/foo/reader/
cd ~/foo/reader/
echo "presione ENTER para continuar..."
read

echo "Descargando el archivo..."
if [ ${#1} -eq 0 ]; then
	echo "El parametro de entrada no es una URL valida"
else
	wget $1 -O file2read
    OCUR=`grep -o "$2" file2read | wc -l`
    echo "INFO: La palabra $2 esta $OCUR veces en el archivo."
fi

echo ""
echo "*** FINALIZA LA EJECUCION ***"
exit 0

