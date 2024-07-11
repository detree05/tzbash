#!/usr/bin/env bash

function print_date {
    for (( i = 1; i <= ${times}; i++ ))
    do
        echo "$(date +%Y.%m.%d\ %H:%M:%S) | Times executed: ${i}"
        [[ ${i} -ne ${times} ]] && sleep 3s
    done
    echo "Total times executed: ${times}"
}

function main {
    times=${1}
    [[ -z ${times} ]] && echo "No argument provided" && exit 1
    [[ ${times} =~ ^[0-9]+$ && ${times} -ne 0 ]] && print_date || echo "Incorrect argument" && exit 1
}

main ${1}