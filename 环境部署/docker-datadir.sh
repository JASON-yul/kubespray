#!/bin/bash

cp -ar /var/lib/docker /mnt/data_disk/
cat > /etc/docker/daemon.json << EOF
{
   "data-root": "/mnt/data_disk/docker"
}
EOF
