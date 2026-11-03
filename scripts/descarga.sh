#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DATOS_DIR="$ROOT/datos"
TMP_DIR="$ROOT/.tmp_descarga"

mkdir -p "$DATOS_DIR" "$TMP_DIR"
cd "$TMP_DIR"

echo "Iniciando descarga del dataset con curl..."

curl -L -o teen-mental-health.zip \
  https://www.kaggle.com/api/v1/datasets/download/argonnxx/teen-mental-health

echo "Descomprimiendo archivos..."
unzip -o teen-mental-health.zip

CSV_ORIGEN="$(find . -maxdepth 1 -type f -name '*.csv' | head -n 1)"
if [ -z "$CSV_ORIGEN" ]; then
  echo "Error: no se encontro un archivo CSV dentro del zip." >&2
  exit 1
fi

echo "Limpieza inicial con sed y awk..."
sed '1s/^\xEF\xBB\xBF//' "$CSV_ORIGEN" | awk 'NF > 0 { print }' > "$DATOS_DIR/dataset.csv"

rm -f teen-mental-health.zip
rm -rf "$TMP_DIR"

echo "Proceso completado. Archivo listo: $DATOS_DIR/dataset.csv"
