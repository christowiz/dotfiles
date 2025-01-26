#!/bin/bash

DIR="/tmp/dotfiles"

# First, download the files
git clone https://github.com/christowiz/dotfiles.git $DIR

cd $DIR || exit

# Then, if needed, make the script executable
chmod +x $DIR/bootstrap.sh

# Review the script contents before running
less $DIR/bootstrap.sh

# Finally, execute if the contents look safe
$DIR/./bootstrap.sh
