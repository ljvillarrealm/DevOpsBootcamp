#!/bin/bash
clear
echo "*** INICIA LA EJECUCION ***"
echo ""

echo "Creando los directorios..."
mkdir -vp ~/foo/dummy/
mkdir -vp ~/foo/empty/
echo "presione ENTER para continuar..."
read

echo "Creando los archivos..."
if [ ${#1} -eq 0 ]; then
	MSG="Me encanta el ramen y programar en bash!"
else
	MSG="$1"
fi
echo $MSG > ~/foo/dummy/file1.txt
touch ~/foo/dummy/file2.txt
echo "presione ENTER para continuar"
read

echo "Realizando ajustes en los archivos..."
cp -v ~/foo/dummy/file1.txt ~/foo/dummy/file2.txt
mv -v ~/foo/dummy/file2.txt ~/foo/empty/

echo ""
echo "*** FINALIZA LA EJECUCION ***"
exit 0
