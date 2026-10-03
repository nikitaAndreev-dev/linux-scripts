#!/bin/bash

read -p "Как тебя зовут? " NAME
read -p "Сколько тебе лет? " AGE

if [ "$AGE" -ge 18 ]; then
    echo "$NAME, доступ разрешён"
else
    echo "$NAME, доступ запрещён"
fi
