#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
brew update

# Tap for brew-cask
if test ! $(brew tap | grep "phinze/cask")
then
  brew tap phinze/cask
fi

# Install homebrew packages
all_formulas=''
while read formula; do
  all_formulas=$all_formulas$(echo $formula | tr '\n' ' ')
done < $(dirname "${BASH_SOURCE[0]}")/Brewfile
brew install $all_formulas

# Install homebrew casks
all_casks=''
while read cask; do
  if test ! $(brew cask list | grep $cask)
  then
    all_casks=$all_casks$(echo $cask | tr '\n' ' ')
  fi
done < $(dirname "${BASH_SOURCE[0]}")/Caskfile
#Override default symlink location (which is ~/Applications)
brew cask install --appdir=/Applications $all_casks

#Link the caskroom to alfred
brew cask alfred link > /dev/null 2>&1

exit 0
