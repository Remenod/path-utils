# Path Utils

## Overview

Path Utils is a set of lightweight Bash scripts for managing your `PATH` environment variable in a convenient and safe way. It allows you to add directories to `PATH`, remove them, and list all current entries, highlighting duplicates and non-existent paths.

## Project Structure

```
.
├── install.sh    # Automatic installer for local or remote usage
├── LICENSE       # MIT License file
├── PKGBUILD      # Arch Linux AUR build script
├── README.md     # This documentation file
└── scripts       # Directory containing executable scripts
    ├── pathadd
    ├── pathdel
    └── pathls
```

## Installation

### AUR

```bash
yay -S path-utils
```

### wget

```bash
wget -qO- https://raw.githubusercontent.com/Remenod/path-utils/master/install.sh | bash
```

### curl

```bash
curl -fsSL https://raw.githubusercontent.com/Remenod/path-utils/master/install.sh | bash
```

## Scripts

> **Tip:** When using these scripts in your current shell session, you may want to `source` them first, especially if you want immediate effects on the current `PATH`.

### `pathadd`

Add a directory to your `PATH` and append it to your `.bashrc` for persistence.

```bash
source pathadd <directory>
```

* Resolves the full path using `realpath`
* Checks if the directory already exists in `PATH`
* Updates the current session and `.bashrc`

### `pathdel`

Remove a directory from your `PATH` and `.bashrc`.

```bash
source pathdel <directory>
```

* Removes the entry from the current session
* Cleans the `.bashrc` to remove persistent entries

### `pathls`

List all directories currently in `PATH`, marking duplicates and non-existent directories.

```bash
pathls
```

* Highlights duplicates in yellow
* Highlights missing directories in red
* Provides a clean overview of the current environment

## Current Features

* Simple, Bash-only scripts with no external dependencies
* Safe updates to `.bashrc` and current session `PATH`
* Detection of duplicates and invalid directories

## Future Plans

* Check if the current shell is Bash and provide warnings if not
* Enhance cross-shell support (Zsh, Fish) with proper detection and updates
* Introduce some kind of CLI for each script

## License

This project is licensed under the MIT License.
