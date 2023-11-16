#!/bin/bash

# This script will setup the Debian package
# In the first Place we must create the DEB package Architecture

# Choosing the Package name
echo "The AutoDep utility is currently running in this Directory, Enter the name for your package:"
read REP

# Create the base directory for the package
mkdir $REP

# Create the DEBIAN directory inside the package directory
mkdir -p $REP/DEBIAN

# Create the usr/local/bin directory structure inside the package
mkdir -p $REP/usr/local/bin

# Then we create and configure the control file
printf "Package: $REP\n
Version: 1.0-0\n
Section: utils\n
Priority: optional\n
Architecture: all\n
Depends: bash (>= 4.0)\n
Maintainer: Name <Your email>\n
Description: Descripe your package\n" > $REP/DEBIAN/control

# Get the Tools
sudo apt-get install dpkg-dev debhelper devscripts

# Build the Package with dpkg
dpkg --build "$REP"
