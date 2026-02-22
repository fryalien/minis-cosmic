#!/bin/bash

file=/etc/sudoers.d/timeout

sudo tee "$file" >/dev/null <<'EOF'
Defaults timestamp_type=tty
Defaults timestamp_timeout=180
EOF

sudo chmod 440 "$file"

#sudo -k

echo "Sudo password timeout set to 180 minutes (3 hours)."
