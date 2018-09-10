#!/bin/bash

T=$1
sed -E 's/-/ /g' $T \
    | sed -E -e 's/(\w)\.(\w)/\1 \2/g' \
    | sed -E -e 's/[[:punct:]]+//g' -e 's/[[:space:]]+$//' \
    | tr [[:upper:]] [[:lower:]]
