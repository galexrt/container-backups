#!/bin/bash

set -euo pipefail

source ./variables.sh

cleanup() {
    rv=$?
    
    sleep .5
    # Unmount the storage
    fusermount -u "${BACKUP_TARGET}"
    rm -f /tmp/.passwd-s3fs
    exit $rv
}

trap "cleanup" EXIT

S3FS_MOUNT_FLAGS=()

# Check if S3FS access and secret key are non-empty
if [ -n "${S3FS_AWS_ACCESS_KEY_ID}" ] && [ -n "${S3FS_AWS_SECRET_ACCESS_KEY}" ]; then
    echo "${S3FS_AWS_ACCESS_KEY_ID}:${S3FS_AWS_SECRET_ACCESS_KEY}" > /tmp/.passwd-s3fs
    chmod 600 /tmp/.passwd-s3fs
    echo "Created S3 credentials file"
    S3FS_MOUNT_FLAGS+=(-o passwd_file=/tmp/.passwd-s3fs)
fi

echo "Mounting bucket using s3fs ..."
mkdir -p "${BACKUP_TARGET}"
if [ "${S3FS_SPECIAL_MOUNTMODE}" = "non-s3" ]; then
    # When the bucket url is empty, try to build it using the other S3FS_BUCKET_* variables
    if [ -z "${S3FS_BUCKET_URL}" ]; then
        S3FS_BUCKET_URL="${S3FS_BUCKET_PROTOCOL}://${S3FS_BUCKET_HOST}:${S3FS_BUCKET_PORT}${S3FS_BUCKET_URL_PATH}"
    fi

    S3FS_MOUNT_FLAGS+=(-o "url=${S3FS_BUCKET_URL}")
fi
s3fs "${S3FS_BUCKET_NAME}" "${BACKUP_TARGET}" "${S3FS_MOUNT_FLAGS[@]}"
echo "Mounted bucket using s3fs."

resticBackupDirectory "${BACKUP_TARGET}"
