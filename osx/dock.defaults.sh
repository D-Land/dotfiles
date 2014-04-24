# Sets reasonable OS X defaults.

add_to_dock() {
  defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>'$1'</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
}

# Remove all apps from the dock
defaults write com.apple.dock persistent-apps -array ""

# Add Messages to dock
add_to_dock /Applications/Messages.app

# Add Chrome to dock
  defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Add iTerm2 to dock
add_to_dock /Applications/iTerm.app

# Place dock of left side of screen
defaults write com.apple.dock orientation -string left

# Dock auto hide/show
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0.0

# Dock icon size
defaults write com.apple.dock tilesize -integer 24

# Put screen to sleep if we're in the top left corner
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 0

killall Dock
