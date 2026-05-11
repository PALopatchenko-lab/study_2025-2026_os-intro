#!/bin/bash

if [ -z "$1" ]; then
    echo "Использование: $0 <команда>"
    exit 1
fi

# Поиск в разных местах (man1, man8 и т.д.)
for section in 1 8 5 2 3; do
    MANPAGE="/usr/share/man/man${section}/$1.${section}.gz"
    if [ -f "$MANPAGE" ]; then
       	zless "$MANPAGE"
       	exit 0
    fi
done

# Альтернативный поиск через стандартную ман-систему
if man "$1" 2>/dev/null | head -1 | grep -q "No manual entry"; then
    echo "Справка для '$1' не найдена"
    exit 1
else
    man "$1"
fi
