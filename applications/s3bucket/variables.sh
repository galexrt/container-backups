#!/bin/bash

# A S3 bucket is mounted to this path. The path cannot be changed.
# Default: `/data`
BACKUP_TARGET="/data"
# The special mount mode
# Default: `""`
S3FS_SPECIAL_MOUNTMODE="${S3FS_SPECIAL_MOUNTMODE:-}"
# Hostname to set for a restic backup.
# Default: `hostname` of server / Pod
S3FS_MOUNT_FLAGS="${S3FS_MOUNT_FLAGS:-}"
# Hostname to set for a restic backup.
# Default: `hostname` of server / Pod
S3FS_AWS_ACCESS_KEY_ID="${S3FS_AWS_ACCESS_KEY_ID:-}"
# Hostname to set for a restic backup.
# Default: `hostname` of server / Pod
S3FS_AWS_SECRET_ACCESS_KEY="${S3FS_AWS_SECRET_ACCESS_KEY:-}"
# TODO
# Default: `https`
S3FS_OBC_PROTOCOL="${S3FS_OBC_PROTOCOL:-https}"
# TODO
# Default: ``
S3FS_OBC_URL_PATH="${S3FS_OBC_URL_PATH:-/}"
# TODO
# Default: ``
S3FS_BUCKET_HOST="${S3FS_BUCKET_HOST:-}"
# TODO
# Default: ``
S3FS_BUCKET_PORT="${S3FS_BUCKET_PORT:-}"
# TODO
# Default: ``
S3FS_BUCKET_NAME="${S3FS_BUCKET_NAME:-/}"
