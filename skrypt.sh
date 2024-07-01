#!/bin/bash

case "$1" in
    --date|-d)
        date
        ;;
    --logs|-l)
        count=${2:-100}
        for ((i=1; i<=count; i++)); do
            filename="log${i}.txt"
            echo "Nazwa pliku: $filename, nazwa skryptu: $0, data: $(date)" > $filename
        done
        ;;
    --help|-h)
   	 echo "Dostepne opcje:"
   	 echo "--date, -d      : Wyswietla dzisiejsza date"
   	 echo "--logs, -l      : Tworzy pliki log (bazowo skrypt tworzy 100 plikow)"
   	 echo "--logs n, -l n  : Tworzy n plikow log"
	 echo "--help, -h      : Wyswietla ta wiadomosc"
        ;;
    --init)
	git clone https://github.com/dominikwiench/lab4
	export PATH=$PATH:$(pwd)/lab4
	;;
    *)
        echo "Nieprawidlowy parametr. Uzyj --help lub -h po wiecej opcji."
        ;;
esac
