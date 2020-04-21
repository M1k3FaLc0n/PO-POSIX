#!/bin/bash

if [ $(( $1 % 2 )) -ne 1 ]
then
    echo "Число должно быть нечетным"
    exit
fi

for i in `seq 1 $1`
do
        for t in `seq 1 $(($1 - $i))`
        do
                printf '%s' ' '
        done

        for j in `seq 1 $i`
        do
                printf '* '
        done
        printf '\n'
done