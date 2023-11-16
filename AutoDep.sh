#!/bin/bash

# This script will setup the Debian package

# In the first Place we must create the DEB package Architecture
 
# Directory where the script will operate
FIELD=$(pwd)

# Choosing the Package name
echo "The AutoDep utility is currently running in this Directory, What do you want to Name your Package?"
read REP

# Create the base directory for the package
mkdir $REP

# Create the DEBIAN directory inside the package directory
mkdir -p $REP/DEBIAN

# Create the usr/local/bin directory structure inside the package
mkdir -p $REP/usr/local/bin


