#!/usr/bin/env bash

echo "--------- Mounting buckets ---------"
# Make directories
mkdir -p /config
mkdir -p /tv
mkdir -p /movies


# Change permissions

chown abc:abc /config
# Mount each bucket
gcsfuse --debug_gcs --debug_fuse -uid 911 -gid 911 -o allow_other $BUCKET_CONFIG /config
gcsfuse --debug_gcs --debug_fuse -uid 911 -gid 911 -o allow_other --only-dir tv/ $BUCKET_MEDIA /tv
gcsfuse --debug_gcs --debug_fuse -uid 911 -gid 911 -o allow_other --only-dir movies/ $BUCKET_MEDIA /movies

# Keep the script alive so container doesn't shutdown
sleep infinity