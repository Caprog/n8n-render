#!/bin/bash
set -e
while [ ! -d "/home/node/.n8n" ]; do sleep 1; done
touch /home/node/.n8n/database.sqlite
ls -lh /home/node/.n8n
exec n8n --sqlite="/home/node/.n8n/database.sqlite"
ls -lh /home/node/.n8n
