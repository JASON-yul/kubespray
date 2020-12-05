#!/bin/bash

cat > /etc/rcS.d/S01rbd-nbd <<EOF
#!/bin/bash
/sbin/modprobe nbd
EOF
