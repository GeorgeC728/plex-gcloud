#!/usr/bin/env bash

echo "--------- Mounting buckets ---------"
# Make directories
mkdir -p /config
#mkdir -p /tv
#mkdir -p /movies


# Change permissions

chown abc:abc /config
# Mount each bucket
gcsfuse --foreground --debug_gcs --debug_fuse -uid 911 -gid 911 -o allow_other $BUCKET_CONFIG /config
#gcsfuse --debug_gcs --debug_fuse $BUCKET_MEDIA /mnt/movies

su abc -s "echo hello > /config/test.txt"

sleep infinity