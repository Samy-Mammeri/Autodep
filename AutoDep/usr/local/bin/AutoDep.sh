#!/bin/bash

# This script will setup the Debian package
# In the first Place we must create the DEB package Architecture

# Choosing the Package name
echo "The AutoDep utility is currently running in this Directory, Enter the name for your package:"
read REP

# Choosing the Script that you want to package
printf "Name the package that you want to choose (it has to be in the current directory)\n include extension"
read REP1

# Moving the Chosen Script to it's New place in the package architecture
mv $REP1 $REP/usr/local/bin

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

# Set-up the APT repository
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz

# Ask the DEV for his Github repo LINK
printf "Input your raw GitHub repository link \nit should look like this :\n https://raw.githubusercontent.com/username/Repository-name/main/)"
read Answer

# Initiate the repository
echo "deb [trusted=yes] $Answer ./" >> etc/apt/sources.list


