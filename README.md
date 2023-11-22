# AutoDep

## Overview

AutoDep is an innovative tool designed for seamless conversion of scripts into Debian packages and setting up apt repositories. This utility simplifies the Debian package creation and distribution process, catering especially to developers and system administrators working with Debian-based systems.

## Installation

### Adding the Repository

To install the AutoDep package via apt, add the repository to your system's package sources:

* Add a line to your `/etc/apt/sources.list`.

or

* create a new `.list` file in `/etc/apt/sources.list.d/`.

Add the repository line:

    deb [trusted=yes] [Repository URL] ./

Note: The `[trusted=yes]` option bypasses the security check for unsigned packages. This is suitable for testing but not recommended for production environments.

### Installing the Package

Once the repository is added, install AutoDep using:

    sudo apt update
    sudo apt install autodep

## Post-Installation

After installing AutoDep, the `postinst` script automatically creates an alias named `auto` for running the AutoDep tool. This alias is added to your `.bashrc` file.

To start using this alias, you can either:

* Restart your shell.
* Run `source ~/.bashrc` to refresh your current shell session.

## Usage

With the `auto` alias set up, you can easily use AutoDep to convert scripts into Debian packages and set up apt repositories. Simply use the `auto` command in your terminal to run AutoDep.

For instance:

```bash
auto
```

```bash
auto

ps: aliases will be added soon
