#!/usr/bin/env bash

set -e


SERVICE="$SERVICE$1"

function wait_for_service() {
    local attempt=1

    until redis-cli -h "$SERVICE" -p 6379 PING; do
        echo "${attempt}/12: Service not up, sleeping ${attempt} seconds..."
        sleep ${attempt}
        attempt=$((attempt + 1))
        if [[ ${attempt} == 500 ]]
        then
            echo -e "\033[31mERROR\033[m: Waited too long for ${SERVICE} to become available!"
            exit 1
        fi
    done
}

wait_for_service

