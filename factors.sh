#!/bin/bash

function factorize {
    local n=$1
    for ((i=2; i*i<=n; i++)); do
        while ((n % i == 0)); do
            n=$((n / i))
            echo -n "$i*"
        done
    done
    if ((n > 1)); then
        echo -n "$n"
    else
        echo -n "${line%*}"
    fi
}

while read -r line; do
    result=$(factorize "$line")
    echo "$line=$result"
done < "$1"

