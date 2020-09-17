# applications

## Structure

A directory with its name represents the application / system to backup (`BACKUP_APPLICATION`).

Each directory can / must contain the following scripts:

| Filename     | Optional? | Description                                                                                   |
| ------------ | --------- | --------------------------------------------------------------------------------------------- |
| `install.sh` | Optional  | Used to install any software, binaries, etc during the container image build.                 |
| `backup.sh`  | Required  | Script which is run to backup an application / system.                                        |
| `restore.sh` | Optional  | Used to restore a backup.                                                                     |
| `pre.sh`     | Optional  | If exists, is run before `backup.sh` and `restore.sh`. E.g., to check for required variables. |
| `post.sh`    | Optional  | If exists, is run after `backup.sh` and `restore.sh`.                                         |

## Index

| Directory Name         | Application / System | Notes                                                 |
| ---------------------- | -------------------- | ----------------------------------------------------- |
| [mongodb/](mongodb/)   | MongoDB              | Backups a MongoDB server / cluster using `mongodump`. |
| [s3bucket/](s3bucket/) | S3 buckets           | Uses `s3fs` to mount and then backup S3 buckets.      |
