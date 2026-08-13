#!/bin/bash

echo "Iniciando descarga del dataset con curl..."

# 1. Descarga directa con curl en la carpeta actual del proyecto
curl -L -o teen-mental-health.zip https://www.kaggle.com/api/v1/datasets/download/argonnxx/teen-mental-health

echo "Descomprimiendo archivos..."

# 2. Descompresión del archivo zip
unzip -o teen-mental-health.zip

# 3. Limpieza inicial: renombrar el archivo extraído a dataset.csv
mv *.csv dataset.csv

# 4. Eliminar el archivo .zip para limpiar el directorio
rm teen-mental-health.zip

echo "¡Proceso completado! El archivo dataset.csv está listo para ser importado en el notebook de Quarto."
