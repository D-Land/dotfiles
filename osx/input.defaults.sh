# Sets reasonable OS X defaults for input devices (keyboard, mouse, etc...)

## Keyboard
# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 0

## Mouse
# Enable tap-to-click
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -bool true

# Disable "natural" (touchscreen-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
