#!/bin/bash
mkdir -p ~/backup
cp "$0" ~/backup/$(basename "$0")
tar -czf ~/backup/$(basename "$0").tar.gz -C ~/backup $(basename "$0") 
rm ~/backup/$(basename "$0") 
