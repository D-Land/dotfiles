# Sets reasonable OS X defaults for finder et. al.

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

## Mission Control
# Don't show the dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool true
