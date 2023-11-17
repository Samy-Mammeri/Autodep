# AutoDep

## Overview

AutoDep is an innovative tool designed for seamless conversion of scripts into Debian packages and setting up apt repositories. This utility simplifies the Debian package creation and distribution process, catering especially to developers and system administrators working with Debian-based systems.

## Installation

### Adding the Repository

To install the AutoDep package via apt, add the repository to your system's package sources:

  * Add a line to your `/etc/apt/sources.list`.
or 
  *  create a new `.list` file in `/etc/apt/sources.list.d/`.

Add the repository line:

    deb [trusted=yes] [Repository URL] ./

Note: The `[trusted=yes]` option bypasses the security check for unsigned packages. This is suitable for testing but not recommended for production environments.

### Installing the Package

Once the repository is added, install AutoDep using:

    sudo apt update
    sudo apt install autodep

## Usage

After installing AutoDep, you can use it to:

  * Convert scripts to Debian package format.
  * Set up an apt repository for distributing your packages.

## Contributing

Contributions are welcome to enhance AutoDep's functionality. Please submit issues and pull requests as needed.
