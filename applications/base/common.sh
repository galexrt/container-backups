#!/bin/bash

getVariable() {
    local var="${1}"
    # Check for MY_VAR_FILE variable
    var_key="${var}_FILE"
    if [ -n "${var}" ]; then
        echo "${!var}"
    elif [ -n "${var_key}" ]; then
        cat "${var_key}"
    fi
}

# TODO Wrapper functions around restic
