# container-backups

Have you ever wanted to backup applications running in containers? Yeah ... about that.

## Goal

The goal of this project is to have a "ready to go" Docker image which is able to easily backup a list of applications by, e.g., a Kubernetes CronJob. The backup tool used is `restic`.
An example for applications / systems begin targeted in the first "phase" of the project are S3 buckets (`s3fs`), MongoDBs (`mongodump`) and MariaDB (`mariabackup`).

The goal is not to backup Persistent Volumes of applications in Kubernetes. There might be a way to backup "a bunch of files" on a "generic storage location" at some point but not with, e.g., CSI snapshots, etc. necessarily in mind.

_Primary target is application data._

## Design

Designs regarding this project can be found in the [`design/` directory](design/).

## Contributing

### VSCode Users

Please use a Markdown formatter plugin to keep the tables formatted.
