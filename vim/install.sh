#!/bin/sh
#
# Setup my maximum awesome repo

CURRENT_DIR=$(dirname "${BASH_SOURCE[0]}")

# Check to see if repo has been cloned before
if [ $(ls -l $CURRENT_DIR | wc -l) -eq 2 ]
then
  echo "  Initial vim repo clone."
  git clone https://github.com/D-Land/maximum-awesome.git $CURRENT_DIR/maximum-awesome
  cd $CURRENT_DIR/maximum-awesome
  rake
fi

# Pull any updates
cd $CURRENT_DIR/maximum-awesome
git pull

exit 0
