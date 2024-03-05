#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Use: $0 <directory>"
    exit 1
fi
DIRECTORIO_DESTINO="$1"

ULTIMA_COPIA=$(ls -t1 "$DIRECTORIO_DESTINO" | head -n1)

if [ -z "$ULTIMA_COPIA" ]; then
    echo "No backup found in the directory: $DIRECTORIO_DESTINO"
    exit 1
fi

TAMANO=$(du -hs "$DIRECTORIO_DESTINO/$ULTIMA_COPIA" | cut -f1)

ULTIMA_ACTUALIZACION=$(date -r "$DIRECTORIO_DESTINO/$ULTIMA_COPIA" +%Y-%m-%d)

echo "Most recent backup name: $ULTIMA_COPIA"
echo "Backup size: $TAMANO"
echo "Last time modified: $ULTIMA_ACTUALIZACION"

