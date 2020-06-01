#!/bin/bash

source=$1
shift
flags=""

while [ $# -gt 0 ]
do
    flags="$flags $1"
    shift
done

gcc $source $flags -o $source.out