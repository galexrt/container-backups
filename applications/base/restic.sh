#!/bin/bash

resticBackupFromStdin() {
    local stdinFilename="${1}"
    shift
    backupCmd --stdin=true --stdin-filename="${stdinFilename}" "${@}"
}

resticBackupDirectory() {
    backupCmd "${@}"
}

resticBackupFile() {
    backupCmd "${@}"
}

resticBackupCmd() {
    echo "Running restic backup ..."
    ionice -c "${BACKUP_IONICE_CLASS}" -n "${BACKUP_IONICE_CLASSDATA}" \
        nice -n "${BACKUP_NICE_ADJUSTMENT}" \
            restic backup \
                --host "${RESTIC_HOSTNAME}" \
                "${RESTIC_BACKUP_FLAGS}" \
                "${@}"
}
