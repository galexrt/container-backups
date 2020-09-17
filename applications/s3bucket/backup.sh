#!/bin/bash

set -euo pipefail

source ./variables.sh

# Check if S3FS access and secret key are non-empty
if [ -n "${S3FS_AWS_ACCESS_KEY_ID}" ] && [ -n "${S3FS_AWS_SECRET_ACCESS_KEY}" ]; then
    echo "${S3FS_AWS_ACCESS_KEY_ID}:${S3FS_AWS_SECRET_ACCESS_KEY}" > /tmp/.passwd-s3fs
    chmod 600 /tmp/.passwd-s3fs
fi

echo "Mounting bucket using s3fs ..."
mkdir -p "${BACKUP_TARGET}"
if [ "${S3FS_SPECIAL_MOUNTMODE}" = "obc" ]; then
    s3fs "${S3FS_BUCKET_NAME}" "${BACKUP_TARGET}" -o passwd_file=/tmp/.passwd-s3fs -o url="${S3FS_OBC_PROTOCOL}://${S3FS_BUCKET_HOST}:${S3FS_BUCKET_PORT}${S3FS_OBC_URL_PATH}" ${S3FS_MOUNT_FLAGS}
else
    s3fs "${S3FS_BUCKET_NAME}" "${BACKUP_TARGET}" ${S3FS_MOUNT_FLAGS}
fi
echo "Mounted bucket using s3fs."

resticBackupDirectory "${BACKUP_TARGET}"

sleep 1
fusermount -u "${BACKUP_TARGET}"
