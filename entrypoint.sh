#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "${DIR}" || { echo "Unable to cd to 'entrypoint.sh' script directory, exiting ..."; exit 1; }

. ./applications/base/common.sh
. ./applications/base/restic.sh

actionHelp() {
    echo "${1} [ACTION] [APPLICATION]"
    echo
    echo "ACTION:"
    echo "    help - Show this help menu."
    echo "    backup - Backup an application."
    echo "    restore - Restore an application backup."
}

executeApplicationScript() {
    echo "executeApplicationScript"
}

ACTION="${1:-help}"
APPLICATION="${2:-}"

case "${ACTION}" in
help)
    actionHelp "$0"
;;
backup|restore)
    echo "Starting ${ACTION} script for ${APPLICATION} application / system"
    executeApplicationScript "${APPLICATION}" "${ACTION}"
    echo "Completed ${ACTION} script for ${APPLICATION} application / system"
;;
*)
    "$0" help
;;
esac
