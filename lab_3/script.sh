#!/bin/bash

if [ $# -lt 3 ] || [ $(($# % 2)) -ne 1 ]
then
    echo "Что-то не так с количеством переменных"
    exit
fi

res=$1
shift 1

while [ $# -gt 0 ]
do
    case $1 in
        +) res=$(echo "scale=3; $res + $2" | bc -l) ;;
        -) res=$(echo "scale=3; $res - $2" | bc -l) ;;
        x) res=$(echo "scale=3; $res * $2" | bc -l) ;;
        /) if [ $2 != "0" ] && [ $2 != "0.0" ]
            then
                res=$(echo "scale=3; $res / $2" | bc -l)
                # res=$(echo "print($res/$2)" | python3)
            else
                echo "На ноль делить нельзя"
                exit
            fi;;
        *) echo "Неверно указан оператор" ;;
    esac
    shift 2
done

echo "Результат: $res"