#!/bin/bash

set -e

echo "Procurando vercel-php..."

PHP_FILE=$(find /vercel \
    -name "index.js" \
    -path "*vercel-php*" \
    2>/dev/null | head -1)

if [ -z "$PHP_FILE" ]; then
    echo "ERRO: vercel-php não encontrado."
    exit 1
fi

echo "vercel-php encontrado em:"
echo "$PHP_FILE"

sed -i \
    "s/handler: 'launcher.launcher'/handler: 'launcher.js'/g" \
    "$PHP_FILE"

echo "vercel-php corrigido."

grep -n "handler:" "$PHP_FILE" | head