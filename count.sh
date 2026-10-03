#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Использование: ./count.sh <папка>"
    exit 1
fi

FOLDER="$1"

if [ ! -d "$FOLDER" ]; then
    echo "Папка $FOLDER не найдена"
    exit 1
fi

COUNT=0
for FILE in "$FOLDER"/*; do
    [ -e "$FILE" ] || continue
    COUNT=$((COUNT + 1))
    echo "$COUNT. $FILE"
done

echo "Всего: $COUNT"
