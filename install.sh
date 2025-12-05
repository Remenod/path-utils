#!/usr/bin/env bash

set -e

INSTALL_DIR="/usr/bin"
REPO="https://raw.githubusercontent.com/Remenod/path-utils/master/scripts"

scripts=("pathadd" "pathdel" "pathls")

for script in "${scripts[@]}"; do
    sudo curl -fsSL "$REPO/$script" -o "$INSTALL_DIR/$script"
    sudo chmod +x "$INSTALL_DIR/$script"
    echo "Installed $script"
done

echo "Done."
