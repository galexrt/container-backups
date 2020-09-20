#!/bin/bash

# ionice class for the application backup and `restic backup` command.
# Default: `2`
BACKUP_IONICE_CLASS="${BACKUP_IONICE_CLASS:-2}"
# ionice class data for the application backup and `restic backup` command.
# Default: `7`
BACKUP_IONICE_CLASSDATA="${BACKUP_IONICE_CLASSDATA:-7}"
# Nice adjustment for the application backup and `restic backup` command.
# Default: `19`
BACKUP_NICE_ADJUSTMENT="${BACKUP_NICE_ADJUSTMENT:-19}"
# Hostname to set for a restic backup.
# Default: `hostname` of server / Pod
RESTIC_HOSTNAME="${RESTIC_HOSTNAME:-$(hostname)}"
# Extra flags to provide to any `restic` command.
# Default: `""`
RESTIC_GLOBAL_FLAGS="${RESTIC_GLOBAL_FLAGS:-}"
# Extra flags to provide to the `restic backup` command.
# Default: `""`
RESTIC_BACKUP_FLAGS="${RESTIC_BACKUP_FLAGS:-}"
# Extra flags to provide to the `restic restore` command.
# Default: `""`
RESTIC_RESTORE_FLAGS="${RESTIC_RESTORE_FLAGS:-}"
