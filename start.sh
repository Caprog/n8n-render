#!/bin/bash

set -e

echo "Waiting for n8nData disk to be mounted..."

while [ ! -d "/home/node/.n8n" ]; do
  sleep 1
done

echo "n8nData disk successfully mounted."

exec n8n