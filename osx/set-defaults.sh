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

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

## Input Devices
# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Enable tap-to-click
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -bool true

# Disable "natural" (touchscreen-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

## Dock
# Place dock of left side of screen
defaults write com.apple.dock orientation -string left

# Dock auto hide/show
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0.0

# Dock icon size
defaults write com.apple.dock tilesize -integer 24

## Mission Control
# Don't show the dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Put screen to sleep if we're in the top left corner
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 0

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
