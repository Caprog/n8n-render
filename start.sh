#!/bin/bash
set -e
while [ ! -d "/home/node/.n8n" ]; do sleep 1; done
touch /home/node/.n8n/database.sqlite
exec n8n --sqlite="/home/node/.n8n/database.sqlite"
