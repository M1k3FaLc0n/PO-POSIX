#!/bin/bash

flags=("-O0" "-O1" "-O2" "-O3" "-O2 -march=native" "-O3 -march=native" "-O2 -march=native -funroll-loops" "-O3 -march=native -funroll-loops")

for i in ${!flags[*]}
do
    echo "-----------------"
    printf "    %s\n" "Флаги : ${flags[$i]}"
    gcc $1 ${flags[$i]} -o $1.out
    printf "    %s\n" "Запуск измерения времени"
    time ./$1.out
    echo ""
    echo "Занимаемое пространство:" `du -b $1.out` "байт"
done