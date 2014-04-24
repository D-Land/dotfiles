# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# Additional resouces
#   https://github.com/ymendel/dotfiles/tree/master/osx
#
# Run ./set-defaults.sh and you'll be good to go.

if [ `which defaults` ]
then
  for f in ${ZSH}/osx/*.defaults.sh
  do
    source $f
  done
fi

#Kill apps that are effected
killall Dock > /dev/null 2>&1
killall Safari > /dev/null 2>&1
