# s3bucket



## Variables

| Name | Default | Description |
| ---- | ------- | ----------- |
| `BACKUP_TARGET` | `/data` | A S3 bucket is mounted to this path. The path cannot be changed. |
| `S3FS_SPECIAL_MOUNTMODE` | `"non-s3"` | The mount mode, by default we assume it **is** AWS S3. If you are using non AWS S3 storage, set this to `non-s3`!  |
| `S3FS_MOUNT_FLAGS` | `hostname` of server / Pod | Mount flags to give to the `sefs` command, to mount the bucket. For information on this check, e.g., the man page https://manpages.debian.org/unstable/s3fs/s3fs.1.en.html |
| `S3FS_AWS_ACCESS_KEY_ID` | `""` | `AWS_ACCESS_KEY_ID` to use for the s3fs bucket mount. |
| `S3FS_AWS_SECRET_ACCESS_KEY` | `""` | `AWS_SECRET_ACCESS_KEY` to use for the s3fs bucket mount. |
| `S3FS_BUCKET_URL` | `` | Full url to reach the S3 host and / or bucket (depending on if the bucket can be reached by path or dns style). If set is used, prefered over the other `S3FS_BUCKET_*` variables. |
| `S3FS_BUCKET_PROTOCOL` | `https` | What protocol to use for the bucket connection (other possible values are `http`). |
| `S3FS_BUCKET_URL_PATH` | `/` | Path to the bucket, e.g., for DNS style buckets should be just `/`. |
| `S3FS_BUCKET_HOST` | `` | S3FS S3 service host |
| `S3FS_BUCKET_PORT` | `` | S3FS S3 service port |
| `S3FS_BUCKET_NAME` | `` | S3FS S3 bucket name to mount. |
