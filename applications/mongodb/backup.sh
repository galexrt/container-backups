#!/bin/bash

# https://docs.min.io/docs/store-mongodb-backups-in-minio.html

mongodump -h mongo-server1 -p 27017 -d blog-data --archive | \
    mc pipe "minio1/mongobkp/backups/mongo-blog-data-$(date +%Y-%m-%d).archive"
