#!/bin/sh

if test ! $(which brew)
then
  echo "  Brew not yet installed re-run after installing brew"
fi

if test ! $(which chruby)
then
  echo "  Installing chruby for you."
  brew install chruby > /tmp/chruby-install.log
fi

if test ! $(which ruby-install)
then
  echo "  Installing ruby-install for you."
  brew install ruby-install > /tmp/ruby-build-install.log

  echo "  Installing ruby 2.2.2"
  ruby-install ruby 2.2.2
fi
