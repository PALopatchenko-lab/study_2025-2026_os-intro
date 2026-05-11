#!/bin/bash

LENGTH=20
RESULT=""

for ((i=0; i<LENGTH; i++)); do
    # $RANDOM от 0 до 32767
    INDEX=$((RANDOM % 26))  # 0-25
    # 97 = 'a' в ASCII
    CHAR=$(printf '%b' "$(printf '\\%03o' $((97 + INDEX)))")
    RESULT="${RESULT}${CHAR}"
done

echo "$RESULT"
