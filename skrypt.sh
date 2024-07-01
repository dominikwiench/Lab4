#!/bin/bash

if [ "$1" == "--date" ]; then
    date
fi

if [ "$1" == "--logs" ]; then
    count=${2:-100}

    for ((i=1; i<=count; i++)); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename, nazwa skryptu: $0, Data: $(date)" > $filename
    done
fi
