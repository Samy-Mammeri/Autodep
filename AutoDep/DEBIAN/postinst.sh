#!/bin/bash

# Append the alias 'auto' to the user's .bashrc to run AutoDep
echo "alias auto='/usr/local/bin/AutoDep'" >> $HOME/.bashrc

# Inform the user about the new alias
echo "Alias 'auto' created for AutoDep. Please restart your shell or source your .bashrc to use it."
