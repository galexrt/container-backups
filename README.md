# container-backups

Have you ever wanted to backup applications running in containers? Yeah ... about that.

## Goal

The goal of this project is to have a "ready to go" Docker image which is able to easily backup a list of applications by, e.g., a Kubernetes CronJob. The backup tool used is `restic`.
An example for applications / systems begin targeted in the first "phase" of the project are S3 buckets (`s3fs`), MongoDBs (`mongodump`) and MariaDB (`mariabackup`).

## Contributing

### VSCode Users

Please use a Markdown formatter plugin to keep the tables formatted.
