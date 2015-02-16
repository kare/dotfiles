#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set standby delay to 1,5 hours (default is 1 hour)
sudo pmset -a standbydelay 5400

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

export PYTHONPATH="/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python"
function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

###############################################################################
# Global                                                                      #
###############################################################################

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

###############################################################################
# Printing, Software Update                                                   #
###############################################################################

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

###############################################################################
# Screen                                                                      #
###############################################################################

# Don't show the ~/bin directory
chflags hidden "$HOME/bin"

# Don't show the ~/pkg directory
chflags hidden "$HOME/pkg"

###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

###############################################################################
# Finder                                                                      #
###############################################################################

echo "Finder: Set iCloud Drive as the default location for new Finder windows"
# NewWindowTarget NewWindowTargetPath Description
# 'PfLo' 'file:///full/path/here/' Any path
# 'PfDe' 'file:///$HOME/Desktop/' Desktop
# 'PfAF' 'file:///System/Library/CoreServices/Finder.app/Contents/Resources/MyLibraries/myDocuments.cannedSearch' All Files View
# 'PfID' 'file:///$HOME/Library/Mobile%20Documents/com~apple~CloudDocs/' iCloud Drive
# 'PfHm' 'file:///$HOME/' Home
# 'PfVo' 'file:///' OS X
# 'PfCm' '' Computer
defaults write com.apple.finder NewWindowTarget -string "PfID"
defaults write com.apple.finder NewWindowTargetPath -string "file:///Users/kare/Library/Mobile%20Documents/com~apple~CloudDocs/"

echo "Finder: Show icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo "Finder: Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Finder: Show status bar"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Finder: Show path bar"
defaults write com.apple.finder ShowPathbar -bool true

echo "Finder: Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo "Finder: Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Finder: When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Desktop: Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Finder: Automatically open a new Finder window when a volume is mounted"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

echo "Finder: Use list view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Finder: Empty Trash securely by default"
defaults write com.apple.finder EmptyTrashSecurely -bool true

CFPreferencesAppSynchronize "com.apple.finder"

###############################################################################
# Dock                                                                        #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

###############################################################################
# Safari                                                                      #
###############################################################################

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Hide Safari’s sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Show Safari status bar
defaults write com.apple.Safari ShowStatusBar -boolean true

CFPreferencesAppSynchronize "com.apple.Safari"

###############################################################################
# Mail                                                                        #
###############################################################################

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

# Display emails in threaded mode, sorted by date (oldest at the top)
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Disable automatic spell checking
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

CFPreferencesAppSynchronize "com.apple.mail"

###############################################################################
# Transmission.app                                                            #
###############################################################################

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

CFPreferencesAppSynchronize "org.m0k.transmission"

###############################################################################
# Twitter.app                                                                 #
###############################################################################

# Disable smart quotes as it’s annoying for code tweets
defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

# Show the app window when clicking the menu bar icon
defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

# Open links in the background
defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# Allow closing the ‘new tweet’ window by pressing `Esc`
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# Show full names rather than Twitter handles
defaults write com.twitter.twitter-mac ShowFullNames -bool true

# Hide the app in the background if it’s not the front-most window
defaults write com.twitter.twitter-mac HideInBackground -bool true

CFPreferencesAppSynchronize "com.twitter.twitter"

#
# Brew
#

# Install OS X Command Line Tools
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
HOMEBREW_EXIT_STATUS=$?
if [ $HOMEBREW_EXIT_STATUS != 0 ]; then
    echo ”Homebrew installation has failed. status $HOMEBREW_EXIT_STATUS”
    exit 2
fi

brew install vim
brew install zsh
brew install zsh-lovers
brew install git
brew install bazaar
brew install mercurial
brew install colordiff
brew install ctags
brew install htop-osx
brew install ssh-copy-id
brew install tig
brew install tree
brew install unrar
brew install p7zip
brew install go --with-cc-common
brew install fleetctl
brew install docker
brew install boot2docker

# Install Go tools
export GOPATH=$HOME
go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
go get golang.org/x/tools/cmd/benchcmp
go get golang.org/x/tools/cmd/cover

echo "Done. Note that some of these changes require a logout/restart to take effect."
