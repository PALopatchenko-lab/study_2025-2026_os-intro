#!/bin/bash

LOCKFILE="/tmp/semaphore.lock"
t1=10
t2=3

# Проверка и снятие блокировки при завершении
cleanup() {
    rm -f "${LOCKFILE}.lock" 2>/dev/null
    exit
}
trap cleanup EXIT INT TERM

echo "[$$] Ожидание ресурса..."

waited=0
while [ $waited -lt $t1 ]; do
    # Атомарная операция создания ссылки
    if ln "$LOCKFILE" "${LOCKFILE}.lock" 2>/dev/null; then
       	echo "[$$] Ресурс захвачен, использование на ${t2} сек..."
       	sleep $t2
       	rm -f "${LOCKFILE}.lock"
       	echo "[$$] Ресурс освобождён"
       	exit 0
    fi
    echo "[$$] Ресурс занят, ожидание... (${waited}/${t1})"
    sleep 1
    ((waited++))
done

echo "[$$] Таймаут, ресурс не получен"
exit 1
