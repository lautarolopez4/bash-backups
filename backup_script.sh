#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Use: $0 <origin_directory> <destiny_directory>"
    exit 1
fi

DIRECTORIO_ORIGEN="$1"
DIRECTORIO_DESTINO="$2"

NOMBRE_COPIA="backup_$(date +'%Y%m%d').tar.gz"

tar -czf "$DIRECTORIO_DESTINO/$NOMBRE_COPIA" "$DIRECTORIO_ORIGEN"

# Mensaje de finalización
echo "Backup completed in $DIRECTORIO_DESTINO/$NOMBRE_COPIA."

