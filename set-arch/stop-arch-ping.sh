#!/bin/bash

file="/etc/NetworkManager/conf.d/20-connectivity.conf"

echo "Write into the file"

sudo tee $file <<'EOF'
[connectivity]
enabled=false
EOF

echo "Change permissions for the file"
sudo chmod 644 $file
