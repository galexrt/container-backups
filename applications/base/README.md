# base



## Variables

| Name | Default | Description |
| ---- | ------- | ----------- |
| `BACKUP_TARGET` | `""` | Directory to backup, not applicable for all application. |
| `BACKUP_IONICE_CLASS` | `hostname` of server / Pod | ionice class for the application backup and `restic backup` command. |
| `BACKUP_IONICE_CLASSDATA` | `hostname` of server / Pod | ionice class data for the application backup and `restic backup` command. |
| `BACKUP_NICE_ADJUSTMENT` | `hostname` of server / Pod | Nice adjustment for the application backup and `restic backup` command. |
| `RESTIC_HOSTNAME` | `hostname` of server / Pod | Hostname to set for a restic backup. |
| `RESTIC_BACKUP_FLAGS` | `""` | Extra flags to provide to the `restic backup` command. |
| `RESTIC_RESTORE_FLAGS` | `""` | Extra flags to provide to the `restic restore` command. |
