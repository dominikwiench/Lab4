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

if [ "$1" == "--help" ]; then
    echo "Dostepne opcje:"
    echo "--date    : Wyswietla dzisiejsza date"
    echo "--logs    : Tworzy pliki log (bazowo skrypt tworzy 100 plikow)"
    echo "--logs n  : Tworzy n plikow log"
    echo "--help    : Wyswietla ta wiadomosc"
fi

