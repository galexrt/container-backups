#!/bin/bash

set -euo pipefail

source ./variables.sh

mongodump --host "${MONGODB_HOST}" --username "${MONGODB_USERNAME}" --password "${MONGODB_PASSWORD}" --archive | resticBackupFromStdin "mongodump-$(date +%s).sql"
