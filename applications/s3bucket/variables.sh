#!/bin/bash

# A S3 bucket is mounted to this path. The path cannot be changed.
# Default: `/data`
# shellcheck disable=SC2034
BACKUP_TARGET="/data"
# The mount mode, by default we assume it **is** AWS S3. If you are using non AWS S3 storage, set this to `non-s3`! 
# Default: `"non-s3"`
S3FS_SPECIAL_MOUNTMODE="${S3FS_SPECIAL_MOUNTMODE:-non-s3}"
# Mount flags to give to the `sefs` command, to mount the bucket. For information on this check, e.g., the man page https://manpages.debian.org/unstable/s3fs/s3fs.1.en.html. This is currently not implemented.
# Default: `""`
S3FS_MOUNT_FLAGS="${S3FS_MOUNT_FLAGS:-}"
# `AWS_ACCESS_KEY_ID` to use for the s3fs bucket mount.
# Default: `""`
S3FS_AWS_ACCESS_KEY_ID="${S3FS_AWS_ACCESS_KEY_ID:-}"
# `AWS_SECRET_ACCESS_KEY` to use for the s3fs bucket mount.
# Default: `""`
S3FS_AWS_SECRET_ACCESS_KEY="${S3FS_AWS_SECRET_ACCESS_KEY:-}"
# Full url to reach the S3 host and / or bucket (depending on if the bucket can be reached by path or dns style). If set is used, prefered over the other `S3FS_BUCKET_*` variables.
# Default: `""`
S3FS_BUCKET_URL="${S3FS_BUCKET_URL:-}"
# What protocol to use for the bucket connection (other possible values are `http`).
# Default: `https`
S3FS_BUCKET_PROTOCOL="${S3FS_BUCKET_PROTOCOL:-https}"
# Path to the bucket, e.g., for DNS style buckets should be just `/`.
# Default: `/`
S3FS_BUCKET_URL_PATH="${S3FS_BUCKET_URL_PATH:-/}"
# S3FS S3 service host
# Default: `""`
S3FS_BUCKET_HOST="${S3FS_BUCKET_HOST:-}"
# S3FS S3 service port
# Default: `443`
S3FS_BUCKET_PORT="${S3FS_BUCKET_PORT:-443}"
# S3FS S3 bucket name to mount.
# Default: `""`
S3FS_BUCKET_NAME="${S3FS_BUCKET_NAME:-}"
