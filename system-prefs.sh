#!/usr/bin/env bash

################################################################################
# Dock & menu bar
################################################################################

echo "- 💻 Dock & Menu Bar"

defaults write com.apple.dock tilesize -int 42
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock orientation -string "bottom"
defaults write com.apple.dock mineffect -string "scale"
# TODO Double-click a window's title bar to <zoom>
defaults write com.apple.dock minimize-to-application -bool true 
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock show-process-indicatos -bool true
defaults write com.apple.dock show-recents -bool false
# TODO Persistent-apps

################################################################################
# Keyboard
################################################################################

echo "- ⌨️ Keyboard"

# Tab - Keyboard
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

# Tab - Text
defaults write -g NSAutomaticCapitalizationEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Tab - Shortcuts
# TODO Disable Spotlight shortcut

################################################################################
# Trackpad
################################################################################

echo "- ◽️ Trackpad"

# Click (haptic feedback)
# 0: Light
# 1: Medium
# 2: Firm
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 1
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 1

# Tracking Speed
# 0: Slow
# 3: Fast
defaults write .GlobalPreferences com.apple.trackpad.scaling -float 0.6875

# Enable Force Click and haptic feedback
defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool true
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -bool false
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -bool true

# Enable right click with two fingers
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true

################################################################################
# Mouse
################################################################################

echo "- 🖱 Mouse"

# Disable mouse acceleration. You must restart for the change to have effect
defaults write .GlobalPreferences com.apple.mouse.scaling -float -1

################################################################################
# Finder
################################################################################

echo "- 📂 Finder"

defaults write -g AppleShowAllExtensions -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool false
# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# TODO Filter side bar items
# Show Sidebar, but remove the Tags section.
defaults write com.apple.finder ShowSidebar -bool true
defaults write com.apple.finder ShowRecentTags -bool false
killall Finder
