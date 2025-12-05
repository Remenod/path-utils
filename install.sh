#!/usr/bin/env bash

set -e

INSTALL_DIR="/usr/bin"

for script in scripts/*; do
    if [ -f "$script" ]; then
        sudo cp "$script" "$INSTALL_DIR/$(basename "$script")"
        sudo chmod +x "$INSTALL_DIR/$(basename "$script")"
        echo "Installed $(basename "$script")"
    fi
done

echo "Done."
