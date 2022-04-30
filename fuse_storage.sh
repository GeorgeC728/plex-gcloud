#!/usr/bin/env bash
# Make directories
mkdir -p /mnt/config
mkdir -p /mnt/media

# Mount each bucket
gcsfuse --debug_gcs --debug_fuse $BUCKET_CONFIG /mnt/config
gcsfuse --debug_gcs --debug_fuse $BUCKET_MEDIA /mnt/media