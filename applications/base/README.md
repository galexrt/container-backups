# base



## Variables

| Name | Default | Description |
| ---- | ------- | ----------- |
| `BACKUP_IONICE_CLASS` | `2` | ionice class for the application backup and `restic backup` command. |
| `BACKUP_IONICE_CLASSDATA` | `7` | ionice class data for the application backup and `restic backup` command. |
| `BACKUP_NICE_ADJUSTMENT` | `19` | Nice adjustment for the application backup and `restic backup` command. |
| `RESTIC_HOSTNAME` | `hostname` of server / Pod | Hostname to set for a restic backup. |
| `RESTIC_GLOBAL_FLAGS` | `""` | Extra flags to provide to any `restic` command. |
| `RESTIC_BACKUP_FLAGS` | `""` | Extra flags to provide to the `restic backup` command. |
| `RESTIC_RESTORE_FLAGS` | `""` | Extra flags to provide to the `restic restore` command. |
