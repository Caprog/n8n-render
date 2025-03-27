#!/bin/bash
ls -lh /home/node/.n8n
set -e

while [ ! -d "/home/node/.n8n" ]; do
  echo "Waiting for n8nData disk to be mounted..."
  sleep 1
done

echo "n8nData disk successfully mounted."

# Creamos el archivo vacío si no existe (evita sobrescritura por disco limpio)
if [ ! -f "/home/node/.n8n/database.sqlite" ]; then
  echo "Creating empty SQLite file..."
  touch /home/node/.n8n/database.sqlite
fi

exec n8n

ls -lh /home/node/.n8n
